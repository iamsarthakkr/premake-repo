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

    -- specify include directories
    includedirs {
        "%{wks.location}/Lib/include",
    }

    
    links { "Lib" } -- link library

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