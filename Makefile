.PHONY: docker-build
docker-build:
	docker build --progress=plain -t sample .
