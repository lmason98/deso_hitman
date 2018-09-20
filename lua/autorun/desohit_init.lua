if (SERVER) then
	deso = deso || {}
	deso.hit = deso.hit || {}

	resource.AddFile "resource/fonts/Lato-Black.ttf"
	resource.AddFile "resource/fonts/Lato-BlackItalic.ttf"
	resource.AddFile "resource/fonts/Lato-Bold.ttf"
	resource.AddFile "resource/fonts/Lato-BoldItalic.ttf"
	resource.AddFile "resource/fonts/Lato-Hairline.ttf"
	resource.AddFile "resource/fonts/Lato-HairlineItalic.ttf"
	resource.AddFile "resource/fonts/Lato-Italic.ttf"
	resource.AddFile "resource/fonts/Lato-Light.ttf"
	resource.AddFile "resource/fonts/Lato-LightItalic.ttf"
	resource.AddFile "resource/fonts/Lato-Regular.ttf"

	AddCSLuaFile "desohit/sh_player.lua"
	AddCSLuaFile "desohit/client/cl_fonts.lua"
	AddCSLuaFile "desohit/client/cl_hitmanhud.lua"
	AddCSLuaFile "desohit/client/cl_placehit.lua"
	AddCSLuaFile "desohit/cl_main.lua"

	include "desohit/sh_player.lua"
	include "desohit/server/sv_desohit.lua"
	include "desohit/sv_main.lua"
end

if (CLIENT) then
	deso = deso || {}
	deso.hit = deso.hit || {}

	include "desohit/sh_player.lua"
	include "desohit/client/cl_fonts.lua"
	include "desohit/client/cl_hitmanhud.lua"
	include "desohit/client/cl_placehit.lua"
	include "desohit/cl_main.lua"
end

	/* Shared */
// function plyMeta:IsHitman()

	/* Client */
// function deso.hit.PlaceHitDerma()

	/* Server */