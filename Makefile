all: push

#VERSION = `cat VERSION`

init: clean
	mkdir -p build
	touch build/.gitkeep

push: init
	python setup.py sdist upload

clean:
	echo "--// delete tmp files."
	rm -rf *.egg-info
	rm -rf dist
	rm -rf build
