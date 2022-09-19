project "stb_image"
    kind "StaticLib"
    language "C"
    staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("int/" .. outputdir .. "/%{prj.name}")

    files {
        "include/stb_image/stb_image.h",
        "src/stb_image.c"
    }

    includedirs {
        "include",
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"