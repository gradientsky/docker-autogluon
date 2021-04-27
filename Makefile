.PHONY: all
all: runtime

.PHONY: clean
clean:
	docker rmi -f  gradientsky/autogluon:${TAG} || :

.PHONY: runtime
runtime:
	docker build \
		--rm -t gradientsky/autogluon:${TAG} \
		--no-cache \
		--force-rm \
		.
	docker images | grep autogluon

.PHONY: test
test:
	bats test/test_autogluon.bats