include "shared.lua"

local white, back, outline, text = Color(255, 255, 255), Color(48, 48, 48), Color(28, 28, 28), Color(0, 156, 255)

/*---------------------------------------------------------
   Name: ENT:Draw()
   Desc: Draws the 3d text above the payphone
---------------------------------------------------------*/
function ENT:Draw()
	self:DrawModel()

	local distance = LocalPlayer():GetPos():Distance(self:GetPos())
	local pos = self:GetPos()
	local ang = self:GetAngles()

	ang:RotateAroundAxis(ang:Right(), 90)
	ang:RotateAroundAxis(ang:Up(), 90)
	ang:RotateAroundAxis(ang:Forward(), 180)

	local alpha = deso.CalcOpacity(distance)
	white.a = alpha
	back.a = alpha
	outline.a = alpha
	text.a = alpha

	if (distance < 210) then
		cam.Start3D2D(pos + ang:Up() * 8 + ang:Forward() * -25 + ang:Right() * -45, ang, 0.1)
			draw.SimpleTextOutlined("Place a hit!", "deso_ent_black", 255, 25, text, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, outline)
			draw.SimpleTextOutlined("[E]", "deso_ent_bold", 255, 250, white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, outline)
		cam.End3D2D()
	end
end