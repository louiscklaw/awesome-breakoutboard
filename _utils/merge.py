#!/usr/bin/env python

# reference build https://travis-ci.org/louiscklaw/test_git_repo/builds/625335510
# https://docs.travis-ci.com/user/environment-variables/

import sys
import os, re, subprocess
import slack

from fabric.api import local, shell_env, lcd, run, settings

SLACK_TOKEN = os.environ['SLACK_TOKEN']

merge_direction = {
  '^test/(.+?)$': 'feature',
  '^feature/(.+?)$' : 'develop',
  '^fix/(.+?)$' : 'pre-merge',
  '^pre-merge/(.+?)$' : 'develop',
  # 'develop': 'master'
}

TRAVIS_BRANCH = os.environ['TRAVIS_BRANCH']
TRAVIS_COMMIT = os.environ['TRAVIS_COMMIT']
TRAVIS_BUILD_NUMBER = os.environ['TRAVIS_BUILD_NUMBER']
GITHUB_REPO = os.environ['TRAVIS_REPO_SLUG']
GITHUB_TOKEN = os.environ['GITHUB_TOKEN']


PUSH_URI="https://{}@github.com/{}".format(GITHUB_TOKEN, GITHUB_REPO)

TEMP_DIR = local('mktemp -d', capture=True)
local('git clone "{}" "{}"'.format(PUSH_URI, TEMP_DIR))

def slack_message(message, channel):
  client = slack.WebClient(token=SLACK_TOKEN)
  response = client.chat_postMessage(
      channel=channel,
      text=message,
      username='TravisMergerBot',
      icon_url=':sob:'
      )

def run_command(command_body):
  command_result = local(command_body, capture=True)
  print(command_result)
  return command_result

def push_commit(uri_to_push, merge_to):
    print('push commit')
    run_command("git push {} {}".format(uri_to_push, merge_to))

def merge_to_branch(commit_id, merge_to):
  with( shell_env( GIT_COMMITTER_EMAIL='travis@travis', GIT_COMMITTER_NAME='Travis CI' ) ):
    print('checkout {} branch'.format(merge_to))
    run_command('git checkout {}'.format(merge_to))

    print('Merging "{}"'.format(commit_id))
    result_to_check = run_command('git merge --ff-only "{}"'.format(commit_id))

    if result_to_check.failed:
      slack_message('error found during merging BUILD{} `{}` from `{}` to `{}`'.format(TRAVIS_BUILD_NUMBER, GITHUB_REPO, TRAVIS_BRANCH, merge_to), '#travis-build-result')
    else:
      slack_message('merging BUILD{} from {} `{}` to `{}` done'.format(TRAVIS_BUILD_NUMBER, GITHUB_REPO, TRAVIS_BRANCH, merge_to), '#travis-build-result')

def create_new_branch(branch_name):
  with( shell_env( GIT_COMMITTER_EMAIL='travis@travis', GIT_COMMITTER_NAME='Travis CI' ) ):
    print('checkout new branch: {}'.format(branch_name))
    run_command('git checkout -b {}'.format(branch_name))

def checkout_branch(branch_name):
  with( shell_env( GIT_COMMITTER_EMAIL='travis@travis', GIT_COMMITTER_NAME='Travis CI' ) ):
    print('checkout branch: {}'.format(branch_name))
    run_command('git checkout {}'.format(branch_name))

def check_branch_exist(branch_name):
  with( shell_env( GIT_COMMITTER_EMAIL='travis@travis', GIT_COMMITTER_NAME='Travis CI' ) ):
    print('check branch exist: {}'.format(branch_name))
    result = [temp.replace('* ','').strip() for temp in run_command('git branch').split('\n')]
    try:
      from pprint import pprint
      pprint(result)
      result.index(branch_name)
      print('branch found')
      return True
    except Exception as e:
      print('branch not found')
      return False
      pass

print('starting merger')
merge_found = False
for merge_from, merge_to in merge_direction.items():
  m = re.match(merge_from, TRAVIS_BRANCH)
  if (m == None ) :
    # print('skipping merge for branch {}'.format(TRAVIS_BRANCH))
    # slack_message('skip merging for BUILD #{} `{}` from `{}` to `{}`'.format(TRAVIS_BUILD_NUMBER, GITHUB_REPO, TRAVIS_BRANCH, merge_to), '#travis-build-result')
    pass

  else:
    merge_found = True
    if len(m.groups()) == 1:
      # TODO: switch for pre-merge
      if TRAVIS_BRANCH[0:4] == 'fix/':
        # handle fix/xxxxxx to pre-merge/xxxxxx
        current_branch = TRAVIS_BRANCH
        expected_pre_merge_branch = current_branch.replace('fix/','pre-merge/')
        # build success on fix branch, checkout new pre-merge and try merge from develop
        if check_branch_exist(expected_pre_merge_branch):
          checkout_branch(expected_pre_merge_branch)
          merge_to_branch(TRAVIS_COMMIT, expected_pre_merge_branch)
        else:
          create_new_branch(expected_pre_merge_branch)
          push_commit(PUSH_URI, expected_pre_merge_branch)
        # merge from develop
        run_command('git merge develop')
        push_commit(PUSH_URI, expected_pre_merge_branch)

        break

      elif TRAVIS_BRANCH[0:9] == 'pre-merge/':
        # handle pre-merge/xxxxxx to develop
        current_branch = TRAVIS_BRANCH
        print(f'try to merge {merge_from} -> {merge_to}')

        with lcd(TEMP_DIR):
          merge_to_branch(TRAVIS_COMMIT, merge_to)
          push_commit(PUSH_URI, merge_to)

        break

      else:
        # handle feature/xxxxxx to develop
        sub_branch = m.group(1)
        print(f'try to merge {merge_from} -> {merge_to}')

        with lcd(TEMP_DIR):
          merge_to_branch(TRAVIS_COMMIT, merge_to)
          push_commit(PUSH_URI, merge_to)

        break

    # TEST: remove else from if loop
    # else:
    #   print(f'try to merge {merge_from} -> {merge_to}')

    #   with lcd(TEMP_DIR):
    #     merge_to_branch(TRAVIS_COMMIT, merge_to)
    #     push_commit(PUSH_URI)

if not merge_found:
  print('no merge direction for this branch')