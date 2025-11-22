LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Yanna
LOCAL_SRC_FILES := Main.cpp \
 Menu/Menu.cpp \
 Menu/Jni.cpp \
 Menu/Setup.cpp \
 Feat.cpp \
 BGFX/Logger.cpp \
 Heplers/JniHelper.cpp \
 Includes/Utils.cpp \
 Network/ClientNetwork.cpp \
 Network/ClientNetworkSender.cpp \
 AdPanelTeam.cpp \
 KittyMemory/KittyMemory.cpp \
 KittyMemory/MemoryPatch.cpp \
 KittyMemory/MemoryBackup.cpp \
 KittyMemory/KittyScanner.cpp \
 KittyMemory/KittyArm64.cpp \
 KittyMemory/KittyUtils.cpp \
 Substrate/SubstrateDebug.cpp \
 Substrate/SubstrateHook.cpp \
 Substrate/SubstratePosixMemory.cpp \
 Substrate/SymbolFinder.cpp \
 Substrate/hde64.c \
 And64InlineHook/And64InlineHook.cpp
LOCAL_LDLIBS := -llog -landroid -lEGL -lGLESv2
LOCAL_CFLAGS := -Wno-pointer-arith -Wno-unused-value -Wno-format -s -O2 -fpermissive
LOCAL_CPPFLAGS := -std=c++11 -fexceptions
LOCAL_LDFLAGS := -L$(LOCAL_PATH)/Dobby/$(TARGET_ARCH_ABI) -ldobby
include $(BUILD_SHARED_LIBRARY)
