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


-- Include the Math project
include "Math"

-- Include the SandBox project
include "SandBox"