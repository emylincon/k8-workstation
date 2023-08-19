# VARIABLES

IMAGE_VERSION=0.0.0
DOCKER_REGISTRY=ugwuanyi
SLAVE_IMAGE_NAME=calc

# FUNCTIONS

build_push:
	@docker buildx ls | grep "temp_builder" || docker buildx create --name=temp_builder --use desktop-linux
	@docker buildx use temp_builder
	@docker buildx build --push --platform linux/amd64,linux/arm64 --no-cache --tag ${DOCKER_REGISTRY}/${SLAVE_IMAGE_NAME}:${IMAGE_VERSION} .
	@docker buildx rm temp_builder
