workspace "PremakeBasic"
    architecture "ARM64"
    startproject "SandBox"
    location "."
    configurations {
        "Debug",
        "Release"
    }

    configurations {
        "Debug",
        "Release"
    }

    flags {
        "MultiProcessorCompile"
    }


-- Include the Library
include "Lib"

-- Include the SandBox project
include "SandBox"