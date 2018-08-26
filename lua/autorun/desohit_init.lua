if (SERVER) then
	deso = deso || {}
	deso.hit = deso.hit || {}

	AddCSLuaFile "desohit/sh_player.lua"
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
	include "desohit/client/cl_hitmanhud.lua"
	include "desohit/client/cl_placehit.lua"
	include "desohit/cl_main.lua"
end