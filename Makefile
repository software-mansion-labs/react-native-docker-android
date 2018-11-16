REVISION ?= 0
IMAGE ?= swmansion/react-native-android

build: 
	docker build --build-arg NODE_VERSION=$(NODE_VERSION) --build-arg YARN_VERSION=$(YARN_VERSION) --build-arg ANDROID_STUDIO_VERSION=$(ANDROID_STUDIO_VERSION) --build-arg ANDROID_PLATFORM=$(ANDROID_PLATFORM) --build-arg BUILD_TOOLS_VERSION=$(BUILD_TOOLS_VERSION) -t $(IMAGE):$(NODE_VERSION)-$(YARN_VERSION)-$(ANDROID_STUDIO_VERSION)-$(ANDROID_PLATFORM)-$(BUILD_TOOLS_VERSION)-$(REVISION) .

check-env:
ifndef ANDROID_STUDIO_VERSION
  $(error ANDROID_STUDIO_VERSION is undefined)
endif
ifndef ANDROID_PLATFORM
  $(error ANDROID_PLATFORM is undefined)
endif
ifndef BUILD_TOOLS_VERSION
  $(error BUILD_TOOLS_VERSION is undefined)
endif
ifndef NODE_VERSION
  $(error NODE_VERSION is undefined)
endif
ifndef YARN_VERSION
  $(error YARN_VERSION is undefined)
endif
