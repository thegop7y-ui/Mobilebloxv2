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
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Includes/

LOCAL_C_INCLUDES := callcheck/callcheck.hpp \
dependencies/base64.hpp \
dependencies/cpr/api.h \
dependencies/cpr/auth.h \
dependencies/cpr/body.h \
dependencies/cpr/cookies.h \
dependencies/cpr/cpr.h \
dependencies/cpr/cprtypes.h \
dependencies/cpr/curlholder.h \
dependencies/cpr/defines.h \
dependencies/cpr/digest.h \
dependencies/cpr/error.h \
dependencies/cpr/low_speed.h \
dependencies/cpr/max_redirects.h \
dependencies/cpr/multipart.h \
dependencies/cpr/parameters.h \
dependencies/cpr/payload.h \
dependencies/cpr/proxies.h \
dependencies/cpr/response.h \
dependencies/cpr/session.h \
dependencies/cpr/ssl_options.h \
dependencies/cpr/timeout.h \
dependencies/cpr/util.h \
dependencies/curl/curl.h \
dependencies/curl/curlver.h \
dependencies/curl/easy.h \
dependencies/curl/header.h \
dependencies/curl/mprintf.h \
dependencies/curl/multi.h \
dependencies/curl/options.h \
dependencies/curl/stdcheaders.h \
dependencies/curl/system.h \
dependencies/curl/typecheck-gcc.h \
dependencies/curl/urlapi.h \
dependencies/curl/websockets.h \
dependencies/HttpStatus.hpp \
dependencies/imgui/backends/imgui_impl_android.h \
dependencies/imgui/backends/imgui_impl_opengl3.h \
dependencies/imgui/backends/imgui_impl_opengl3_loader.h \
dependencies/imgui/imconfig.h \
dependencies/imgui/imgui.h \
dependencies/imgui/imgui_internal.h \
dependencies/imgui/imstb_rectpack.h \
dependencies/imgui/imstb_textedit.h \
dependencies/imgui/imstb_truetype.h \
dependencies/ixwebsocket/IXBase64.h \
dependencies/ixwebsocket/IXBench.h \
dependencies/ixwebsocket/IXCancellationRequest.h \
dependencies/ixwebsocket/IXConnectionState.h \
dependencies/ixwebsocket/IXDNSLookup.h \
dependencies/ixwebsocket/IXExponentialBackoff.h \
dependencies/ixwebsocket/IXGetFreePort.h \
dependencies/ixwebsocket/IXGzipCodec.h \
dependencies/ixwebsocket/IXHttp.h \
dependencies/ixwebsocket/IXHttpClient.h \
dependencies/ixwebsocket/IXHttpServer.h \
dependencies/ixwebsocket/IXNetSystem.h \
dependencies/ixwebsocket/IXProgressCallback.h \
dependencies/ixwebsocket/IXSelectInterrupt.h \
dependencies/ixwebsocket/IXSelectInterruptEvent.h \
dependencies/ixwebsocket/IXSelectInterruptFactory.h \
dependencies/ixwebsocket/IXSelectInterruptPipe.h \
dependencies/ixwebsocket/IXSetThreadName.h \
dependencies/ixwebsocket/IXSocket.h \
dependencies/ixwebsocket/IXSocketAppleSSL.h \
dependencies/ixwebsocket/IXSocketConnect.h \
dependencies/ixwebsocket/IXSocketFactory.h \
dependencies/ixwebsocket/IXSocketMbedTLS.h \
dependencies/ixwebsocket/IXSocketOpenSSL.h \
dependencies/ixwebsocket/IXSocketServer.h \
dependencies/ixwebsocket/IXSocketTLSOptions.h \
dependencies/ixwebsocket/IXStrCaseCompare.h \
dependencies/ixwebsocket/IXUdpSocket.h \
dependencies/ixwebsocket/IXUniquePtr.h \
dependencies/ixwebsocket/IXUrlParser.h \
dependencies/ixwebsocket/IXUserAgent.h \
dependencies/ixwebsocket/IXUtf8Validator.h \
dependencies/ixwebsocket/IXUuid.h \
dependencies/ixwebsocket/IXWebSocket.h \
dependencies/ixwebsocket/IXWebSocketCloseConstants.h \
dependencies/ixwebsocket/IXWebSocketCloseInfo.h \
dependencies/ixwebsocket/IXWebSocketErrorInfo.h \
dependencies/ixwebsocket/IXWebSocketHandshake.h \
dependencies/ixwebsocket/IXWebSocketHandshakeKeyGen.h \
dependencies/ixwebsocket/IXWebSocketHttpHeaders.h \
dependencies/ixwebsocket/IXWebSocketInitResult.h \
dependencies/ixwebsocket/IXWebSocketMessage.h \
dependencies/ixwebsocket/IXWebSocketMessageType.h \
dependencies/ixwebsocket/IXWebSocketOpenInfo.h \
dependencies/ixwebsocket/IXWebSocketPerMessageDeflate.h \
dependencies/ixwebsocket/IXWebSocketPerMessageDeflateCodec.h \
dependencies/ixwebsocket/IXWebSocketPerMessageDeflateOptions.h \
dependencies/ixwebsocket/IXWebSocketProxyServer.h \
dependencies/ixwebsocket/IXWebSocketSendData.h \
dependencies/ixwebsocket/IXWebSocketSendInfo.h \
dependencies/ixwebsocket/IXWebSocketServer.h \
dependencies/ixwebsocket/IXWebSocketTransport.h \
dependencies/ixwebsocket/IXWebSocketVersion.h \
dependencies/luau/Ast/include/Luau/Ast.h \
dependencies/luau/Ast/include/Luau/Common.h \
dependencies/luau/Ast/include/Luau/Confusables.h \
dependencies/luau/Ast/include/Luau/DenseHash.h \
dependencies/luau/Ast/include/Luau/Lexer.h \
dependencies/luau/Ast/include/Luau/Location.h \
dependencies/luau/Ast/include/Luau/ParseOptions.h \
dependencies/luau/Ast/include/Luau/Parser.h \
dependencies/luau/Ast/include/Luau/ParseResult.h \
dependencies/luau/Ast/include/Luau/StringUtils.h \
dependencies/luau/Ast/include/Luau/TimeTrace.h \
dependencies/luau/Common/include/Luau/Bytecode.h \
dependencies/luau/Common/include/Luau/BytecodeUtils.h \
dependencies/luau/Common/include/Luau/Common.h \
dependencies/luau/Common/include/Luau/DenseHash.h \
dependencies/luau/Common/include/Luau/ExperimentalFlags.h \
dependencies/luau/Compiler/include/Luau/Bytecode.h \
dependencies/luau/Compiler/include/Luau/BytecodeBuilder.h \
dependencies/luau/Compiler/include/Luau/BytecodeUtils.h \
dependencies/luau/Compiler/include/Luau/Compiler.h \
dependencies/luau/VM/src/lbuffer.h \
dependencies/lz4/lz4.h \
environment/environment.hpp \
execution/execution.hpp \
exploit.hpp \
dependencies/dobby/dobby.h \
dependencies/luau/Ast/include/dependencies/luau/Ast.h \
dependencies/luau/Ast/include/dependencies/luau/Common.h \
dependencies/luau/Ast/include/dependencies/luau/Confusables.h \
dependencies/luau/Ast/include/dependencies/luau/DenseHash.h \
dependencies/luau/Ast/include/dependencies/luau/Lexer.h \
dependencies/luau/Ast/include/dependencies/luau/Location.h \
dependencies/luau/Ast/include/dependencies/luau/ParseOptions.h \
dependencies/luau/Ast/include/dependencies/luau/Parser.h \
dependencies/luau/Ast/include/dependencies/luau/ParseResult.h \
dependencies/luau/Ast/include/dependencies/luau/StringUtils.h \
dependencies/luau/Ast/include/dependencies/luau/TimeTrace.h \
dependencies/luau/Compiler/include/luacode.h \
dependencies/luau/Compiler/include/dependencies/luau/Bytecode.h \
dependencies/luau/Compiler/include/dependencies/luau/BytecodeBuilder.h \
dependencies/luau/Compiler/include/dependencies/luau/BytecodeUtils.h \
dependencies/luau/Compiler/include/dependencies/luau/Compiler.h \
dependencies/luau/Compiler/src/BuiltinFolding.h \
dependencies/luau/Compiler/src/Builtins.h \
dependencies/luau/Compiler/src/ConstantFolding.h \
dependencies/luau/Compiler/src/CostModel.h \
dependencies/luau/Compiler/src/TableShape.h \
dependencies/luau/Compiler/src/Types.h \
dependencies/luau/Compiler/src/ValueTracking.h \
dependencies/luau/VM/include/lua.h \
dependencies/luau/VM/include/luaconf.h \
dependencies/luau/VM/include/lualib.h \
dependencies/luau/VM/src/lapi.h \
dependencies/luau/VM/src/lbuiltins.h \
dependencies/luau/VM/src/lbytecode.h \
dependencies/luau/VM/src/lcommon.h \
dependencies/luau/VM/src/ldebug.h \
dependencies/luau/VM/src/ldo.h \
dependencies/luau/VM/src/lfunc.h \
dependencies/luau/VM/src/lgc.h \
dependencies/luau/VM/src/lmem.h \
dependencies/luau/VM/src/lnumutils.h \
dependencies/luau/VM/src/lobject.h \
dependencies/luau/VM/src/lstate.h \
dependencies/luau/VM/src/lstring.h \
dependencies/luau/VM/src/ltable.h \
dependencies/luau/VM/src/ltm.h \
dependencies/luau/VM/src/ludata.h \
dependencies/luau/VM/src/lvm.h \
LuaUI.hpp \
pch.hpp \
reflection/instance.hpp \
renderer/renderer.hpp \
roblox/update.hpp \
roblox/hooks.hpp \
taskscheduler/taskscheduler.hpp \
utils/utils.hpp

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
