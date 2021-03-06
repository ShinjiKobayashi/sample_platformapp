TOP_LOCAL_PATH:= $(call my-dir)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_JAVACFLAGS := -processor butterknife.internal.ButterKnifeProcessor


LOCAL_STATIC_JAVA_LIBRARIES := \
        android-support-v4 \
        android-support-v7-appcompat \
        butterknife \

LOCAL_JAVA_LIBRARIES := \



LOCAL_PROGUARD_ENABLED := disabled
LOCAL_RESOURCE_DIR := \
        $(LOCAL_PATH)/res \
        frameworks/support/v7/appcompat/res


LOCAL_AAPT_FLAGS := \
        --auto-add-overlay \
        --extra-packages android.support.v7.appcompat


LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := Sample


include $(BUILD_PACKAGE)


include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
	butterknife:libs/butterknife-7.0.1.jar \

include $(BUILD_MULTI_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
