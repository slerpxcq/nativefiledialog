project "nativefiledialog"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir "%{wks.location}/bin/%{prj.name}/%{cfg.buildcfg}"
    objdir "%{wks.location}/obj/%{prj.name}/%{cfg.buildcfg}"

	includedirs {
		"src/include"
	}

    files {
        "src/nfd_common.c"
    }

    filter "system:windows"
        systemversion "latest"
        files {
            "src/nfd_win.cpp"
        }
        defines {
			"_CRT_SECURE_NO_WARNINGS"
        }

    filter "configurations:Debug"
        symbols "on"

    filter "configurations:Release"
        optimize "on"

