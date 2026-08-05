LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)

LOCAL_MODULE := libdobby
LOCAL_SRC_FILES := dependencies/dobby/$(TARGET_ARCH_ABI)/libdobby.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/dependencies/dobby
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libcurl
LOCAL_SRC_FILES := dependencies/curl/$(TARGET_ARCH_ABI)/libcurl.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/dependencies/curl
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libssl
LOCAL_SRC_FILES := dependencies/curl/$(TARGET_ARCH_ABI)/libssl.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/dependencies/curl
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libcrypto
LOCAL_SRC_FILES := dependencies/curl/$(TARGET_ARCH_ABI)/libcrypto.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/dependencies/curl
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := Midnight

LOCAL_CFLAGS := -w -s -Wno-error=format-security -fvisibility=hidden -fpermissive -fexceptions
LOCAL_CPPFLAGS := -w -s -Wno-error=format-security -fvisibility=hidden -Werror -std=c++17
LOCAL_CPPFLAGS += -Wno-error=c++11-narrowing -fpermissive -Wall -fexceptions
LOCAL_LDFLAGS += -Wl,--gc-sections,--strip-all,-llog
LOCAL_LDLIBS := -llog -landroid -lEGL -lGLESv2
LOCAL_ARM_MODE := arm


LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Includes
LOCAL_C_INCLUDES += $(LOCAL_PATH)/callcheck
LOCAL_C_INCLUDES += $(LOCAL_PATH)/dependencies
LOCAL_C_INCLUDES += $(LOCAL_PATH)/dependencies/luau/VM/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/dependencies/luau/VM/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/dependencies/luau/Compiler/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/dependencies/luau/Ast/include

LOCAL_SRC_FILES := callcheck/callcheck.cpp \
dependencies/cpr/auth.cpp \
dependencies/cpr/cookies.cpp \
dependencies/cpr/cprtypes.cpp \
dependencies/cpr/digest.cpp \
dependencies/cpr/error.cpp \
dependencies/cpr/multipart.cpp \
dependencies/cpr/parameters.cpp \
dependencies/cpr/payload.cpp \
dependencies/cpr/proxies.cpp \
dependencies/cpr/session.cpp \
dependencies/cpr/ssl_options.cpp \
dependencies/cpr/timeout.cpp \
dependencies/cpr/util.cpp \
dependencies/imgui/backends/imgui_impl_android.cpp \
dependencies/imgui/backends/imgui_impl_opengl3.cpp \
dependencies/imgui/imgui.cpp \
dependencies/imgui/imgui_demo.cpp \
dependencies/imgui/imgui_draw.cpp \
dependencies/imgui/imgui_tables.cpp \
dependencies/imgui/imgui_widgets.cpp \
dependencies/ixwebsocket/IXBench.cpp \
dependencies/ixwebsocket/IXCancellationRequest.cpp \
dependencies/ixwebsocket/IXConnectionState.cpp \
dependencies/ixwebsocket/IXDNSLookup.cpp \
dependencies/ixwebsocket/IXExponentialBackoff.cpp \
dependencies/ixwebsocket/IXGetFreePort.cpp \
dependencies/ixwebsocket/IXGzipCodec.cpp \
dependencies/ixwebsocket/IXHttp.cpp \
dependencies/ixwebsocket/IXHttpClient.cpp \
dependencies/ixwebsocket/IXHttpServer.cpp \
dependencies/ixwebsocket/IXNetSystem.cpp \
dependencies/ixwebsocket/IXSelectInterrupt.cpp \
dependencies/ixwebsocket/IXSelectInterruptEvent.cpp \
dependencies/ixwebsocket/IXSelectInterruptFactory.cpp \
dependencies/ixwebsocket/IXSelectInterruptPipe.cpp \
dependencies/ixwebsocket/IXSetThreadName.cpp \
dependencies/ixwebsocket/IXSocket.cpp \
dependencies/ixwebsocket/IXSocketAppleSSL.cpp \
dependencies/ixwebsocket/IXSocketConnect.cpp \
dependencies/ixwebsocket/IXSocketFactory.cpp \
dependencies/ixwebsocket/IXSocketMbedTLS.cpp \
dependencies/ixwebsocket/IXSocketOpenSSL.cpp \
dependencies/ixwebsocket/IXSocketServer.cpp \
dependencies/ixwebsocket/IXSocketTLSOptions.cpp \
dependencies/ixwebsocket/IXStrCaseCompare.cpp \
dependencies/ixwebsocket/IXUdpSocket.cpp \
dependencies/ixwebsocket/IXUrlParser.cpp \
dependencies/ixwebsocket/IXUserAgent.cpp \
dependencies/ixwebsocket/IXUuid.cpp \
dependencies/ixwebsocket/IXWebSocket.cpp \
dependencies/ixwebsocket/IXWebSocketCloseConstants.cpp \
dependencies/ixwebsocket/IXWebSocketHandshake.cpp \
dependencies/ixwebsocket/IXWebSocketHttpHeaders.cpp \
dependencies/ixwebsocket/IXWebSocketPerMessageDeflate.cpp \
dependencies/ixwebsocket/IXWebSocketPerMessageDeflateCodec.cpp \
dependencies/ixwebsocket/IXWebSocketPerMessageDeflateOptions.cpp \
dependencies/ixwebsocket/IXWebSocketProxyServer.cpp \
dependencies/ixwebsocket/IXWebSocketServer.cpp \
dependencies/ixwebsocket/IXWebSocketTransport.cpp \
dependencies/luau/VM/src/lbuffer.cpp \
dependencies/luau/VM/src/lbuflib.cpp \
dependencies/lz4/lz4.cpp \
environment/environment.cpp \
environment/libraries/closure.cpp \
environment/libraries/debug.cpp \
environment/libraries/misc.cpp \
environment/libraries/mthooks.cpp \
environment/libraries/reflection.cpp \
environment/libraries/websocket.cpp \
execution/execution.cpp \
main.cpp \
exploit.cpp \
dependencies/luau/Ast/src/Ast.cpp \
dependencies/luau/Ast/src/Confusables.cpp \
dependencies/luau/Ast/src/Lexer.cpp \
dependencies/luau/Ast/src/Location.cpp \
dependencies/luau/Ast/src/Parser.cpp \
dependencies/luau/Ast/src/StringUtils.cpp \
dependencies/luau/Ast/src/TimeTrace.cpp \
dependencies/luau/Compiler/src/BuiltinFolding.cpp \
dependencies/luau/Compiler/src/Builtins.cpp \
dependencies/luau/Compiler/src/BytecodeBuilder.cpp \
dependencies/luau/Compiler/src/Compiler.cpp \
dependencies/luau/Compiler/src/ConstantFolding.cpp \
dependencies/luau/Compiler/src/CostModel.cpp \
dependencies/luau/Compiler/src/lcode.cpp \
dependencies/luau/Compiler/src/TableShape.cpp \
dependencies/luau/Compiler/src/Types.cpp \
dependencies/luau/Compiler/src/ValueTracking.cpp \
dependencies/luau/VM/src/lapi.cpp \
dependencies/luau/VM/src/laux.cpp \
dependencies/luau/VM/src/lbaselib.cpp \
dependencies/luau/VM/src/lbitlib.cpp \
dependencies/luau/VM/src/lbuiltins.cpp \
dependencies/luau/VM/src/lcorolib.cpp \
dependencies/luau/VM/src/ldblib.cpp \
dependencies/luau/VM/src/ldebug.cpp \
dependencies/luau/VM/src/ldo.cpp \
dependencies/luau/VM/src/lfunc.cpp \
dependencies/luau/VM/src/lgc.cpp \
dependencies/luau/VM/src/lgcdebug.cpp \
dependencies/luau/VM/src/linit.cpp \
dependencies/luau/VM/src/lmathlib.cpp \
dependencies/luau/VM/src/lmem.cpp \
dependencies/luau/VM/src/lnumprint.cpp \
dependencies/luau/VM/src/lobject.cpp \
dependencies/luau/VM/src/loslib.cpp \
dependencies/luau/VM/src/lperf.cpp \
dependencies/luau/VM/src/lstate.cpp \
dependencies/luau/VM/src/lstring.cpp \
dependencies/luau/VM/src/lstrlib.cpp \
dependencies/luau/VM/src/ltable.cpp \
dependencies/luau/VM/src/ltablib.cpp \
dependencies/luau/VM/src/ltm.cpp \
dependencies/luau/VM/src/ludata.cpp \
dependencies/luau/VM/src/lutf8lib.cpp \
dependencies/luau/VM/src/lvmexecute.cpp \
dependencies/luau/VM/src/lvmload.cpp \
dependencies/luau/VM/src/lvmutils.cpp \
reflection/instance.cpp \
renderer/renderer.cpp \
roblox/update.cpp \
roblox/hooks.cpp \
taskscheduler/taskscheduler.cpp \
utils/utils.cpp

LOCAL_STATIC_LIBRARIES := libdobby libcurl libssl libcrypto

include $(BUILD_SHARED_LIBRARY)
