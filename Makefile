.PHONY: all
all: runtime

.PHONY: clean
clean:
	docker rmi -f  autogluon/autogluon:${TAG} || :

.PHONY: runtime
runtime:
	docker build \
		--rm -t autogluon/autogluon:${TAG} \
		--no-cache \
		--force-rm \
		.
	docker images | grep autogluon

.PHONY: test
test:
	bats test/test_autogluon.bats