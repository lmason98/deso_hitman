local plyMeta = FindMetaTable("Player")

/*---------------------------------------------------------
   Name: PLAYER:IsHitman()
   Desc: Checks if a player is using the hitman job
   Return: Bool
---------------------------------------------------------*/
function plyMeta:IsHitman()
	if (self:getDarkRPVar("job") == "Citizen") then -- change later
		return true
	end

	return false
end