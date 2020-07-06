
build:
	docker build --tag=test .

test:
	docker run --rm -it test python ./runtests.py

install:
	docker run --rm -it test pip install .


suite: build test install
