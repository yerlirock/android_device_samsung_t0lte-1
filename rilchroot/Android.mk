include $(CLEAR_VARS)
LOCAL_MODULE := rilchroot
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT)/rilchroot

$(TARGET_OUT)/rilchroot:  $(TARGET_OUT)/xbin/ril $(TARGET_OUT)/cm12chroot $(TARGET_OUT)/skkchroot $(TARGET_OUT)/tmchroot
	ln -sf cm12chroot $(TARGET_OUT)/rilchroot

$(TARGET_OUT)/cm12chroot:
	tar xzf device/samsung/t0lte/rilchroot/cm12chroot.tgz -C $(TARGET_OUT)

$(TARGET_OUT)/skkchroot:
	tar xzf device/samsung/t0lte/rilchroot/skkchroot.tgz -C $(TARGET_OUT)

$(TARGET_OUT)/tmchroot:
	tar xzf device/samsung/t0lte/rilchroot/tmchroot.tgz -C $(TARGET_OUT)


$(TARGET_OUT)/xbin/ril: $(TARGET_OUT)/xbin
	cp device/samsung/t0lte/rilchroot/ril $(TARGET_OUT)/xbin/ril

$(TARGET_OUT)/xbin:
	mkdir -p $(TARGET_OUT)/xbin

include $(BUILD_PHONY_PACKAGE)
