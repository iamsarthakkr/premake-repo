project "Math"
    kind "StaticLib"
    language "C++"
    location "%{wks.location}/build"
    targetdir "%{wks.location}/bin/%{cfg.buildcfg}"
    objdir "%{wks.location}/bin-int/%{cfg.buildcfg}"
    staticruntime "On"

    files {
        "include/MathLib.h",
        "src/MathLib.cpp"
    }

    includedirs {
        "include"
    }

    filter "system:windows"
        defines { "PLATFORM_WINDOWS" }

    filter "system:linux"
        defines { "PLATFORM_LINUX" }

    filter "system:macosx"
        defines { "PLATFORM_MAC" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"