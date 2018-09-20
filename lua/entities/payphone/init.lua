AddCSLuaFile "shared.lua"
AddCSLuaFile "cl_init.lua"

include "shared.lua"

/*---------------------------------------------------------
   Name: ENT:Initialize()
---------------------------------------------------------*/
function ENT:Initialize()
	self:SetModel("models/props_trainstation/payphone001a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)

	local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then phys:Wake() end
end

/*---------------------------------------------------------
   Name: ENT:Use()
   Desc: Sends a message to client to open the derma frame
---------------------------------------------------------*/
function ENT:Use(activator, caller)
	if (caller && caller:IsPlayer()) then
		net.Start("desohit_open_placehit_pnl")
		net.Send(caller)
	end
end