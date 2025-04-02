project "SandBox"
    kind "ConsoleApp"
    language "C++"
    location "%{wks.location}/build"
    targetdir "%{wks.location}/bin/%{cfg.buildcfg}/%{prj.name}"
    objdir "%{wks.location}/bin-int/%{cfg.buildcfg}/%{prj.name}"
    staticruntime "On"

    files {
        "**.h",
        "**.cpp"
    }

    includedirs {
        "%{wks.location}/Math/include",
    }

    links { "Math" }

    filter "system:windows"
        defines { "PLATFORM_WINDOWS" }

    filter "system:linux"
        defines { "PLATFORM_LINUX" }

    filter "system:macosx"
        systemversion "15.0" -- Replace with your macOS version
        defines { "PLATFORM_MAC" }
       

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"   