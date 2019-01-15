REVISION ?= 0
IMAGE ?= swmansion/react-native-android

build: 
	docker build --build-arg NODE_VERSION=$(NODE_VERSION) --build-arg YARN_VERSION=$(YARN_VERSION) --build-arg ANDROID_SDK_VERSION=$(ANDROID_SDK_VERSION) --build-arg ANDROID_PLATFORM=$(ANDROID_PLATFORM) --build-arg BUILD_TOOLS_VERSION=$(BUILD_TOOLS_VERSION) -t $(IMAGE):$(NODE_VERSION)-$(YARN_VERSION)-$(ANDROID_SDK_VERSION)-$(ANDROID_PLATFORM)-$(BUILD_TOOLS_VERSION)-$(REVISION) .

check-env:
ifndef ANDROID_SDK_VERSION
  $(error ANDROID_SDK_VERSION is undefined)
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
