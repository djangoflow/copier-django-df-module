build:
	copier copy -r HEAD --overwrite . example

clean:
	rm -rf example

install:
	pip install copier
