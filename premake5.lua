project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
  	"imconfig.h",
  	"imgui.h",
  	"imgui.cpp",
  	"imgui_draw.cpp",
  	"imgui_internal.h",
  	"imgui_widgets.cpp",
  	"imgui_rectpack.h",
  	"imgui_textedit.h",
  	"imgui_truetype.h",
  	"imgui_demo.h"
  }

	filter "system:Windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter { "system:Windows", "configurations:Release" }
		buildoptions "/MT"
