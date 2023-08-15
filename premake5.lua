
TRACY_PUBLIC_DIR = "public"

project "tracy"
    kind "StaticLib"
    language "c++"
    cppdialect "c++17"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "%{TRACY_PUBLIC_DIR}/TracyClient.cpp",

        "%{TRACY_PUBLIC_DIR}/tracy/TracyC.h",
        "%{TRACY_PUBLIC_DIR}/tracy/Tracy.hpp",
        "%{TRACY_PUBLIC_DIR}/tracy/TracyD3D11.hpp",
        "%{TRACY_PUBLIC_DIR}/tracy/TracyD3D12.hpp",
        "%{TRACY_PUBLIC_DIR}/tracy/TracyLua.hpp",
        "%{TRACY_PUBLIC_DIR}/tracy/TracyOpenCL.hpp",
        "%{TRACY_PUBLIC_DIR}/tracy/TracyOpenGL.hpp",
        "%{TRACY_PUBLIC_DIR}/tracy/TracyVulkan.hpp)",
    
        "%{TRACY_PUBLIC_DIR}/client/tracy_concurrentqueue.h",
        "%{TRACY_PUBLIC_DIR}/client/tracy_rpmalloc.hpp",
        "%{TRACY_PUBLIC_DIR}/client/tracy_SPSCQueue.h",
        "%{TRACY_PUBLIC_DIR}/client/TracyArmCpuTable.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyCallstack.h",
        "%{TRACY_PUBLIC_DIR}/client/TracyCallstack.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyCpuid.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyDebug.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyDxt1.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyFastVector.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyLock.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyProfiler.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyRingBuffer.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyScoped.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyStringHelpers.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracySysPower.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracySysTime.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracySysTrace.hpp",
        "%{TRACY_PUBLIC_DIR}/client/TracyThread.hpp)",
    
        "%{TRACY_PUBLIC_DIR}/common/tracy_lz4.hpp",
        "%{TRACY_PUBLIC_DIR}/common/tracy_lz4hc.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyAlign.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyAlloc.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyApi.h",
        "%{TRACY_PUBLIC_DIR}/common/TracyColor.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyForceInline.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyMutex.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyProtocol.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyQueue.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracySocket.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyStackFrames.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracySystem.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyUwp.hpp",
        "%{TRACY_PUBLIC_DIR}/common/TracyYield.hpp)"
    }

    includedirs {
        "public/tracy",
        "public/client",
        "public/common"
    }

    defines {
        "TRACY_ENABLE=1",
        "TRACY_ON_DEMAND=0",
        "TRACY_CALLSTACK=0",
        "TRACY_NO_CALLSTACK=0",
        "TRACY_NO_CALLSTACK_INLINES=0",
        "TRACY_ONLY_LOCALHOST=0",
        "TRACY_NO_BROADCAST=0",
        "TRACY_ONLY_IPV4=0",
        "TRACY_NO_CODE_TRANSFER=0",
        "TRACY_NO_CONTEXT_SWITCH=0",
        "TRACY_NO_EXIT=0",
        "TRACY_NO_SAMPLING=0",
        "TRACY_NO_VERIFY=0",
        "TRACY_NO_VSYNC_CAPTURE=0",
        "TRACY_NO_FRAME_IMAGE=0",
        "TRACY_NO_SYSTEM_TRACING=0",
        "TRACY_DELAYED_INIT=0",
        "TRACY_MANUAL_LIFETIME=0",
        "TRACY_FIBERS=0",
        "TRACY_NO_CRASH_HANDLER=0",
        "TRACY_TIMER_FALLBACK=0"
    }

    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
        defines "NDEBUG"
        defines "_NDEBUG"
