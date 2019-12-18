
pre_commit:
	python3 _utils/shallow_submodule.py
	echo 'pre commit step done'

build:
	git submodule update --init

all: build