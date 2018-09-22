local width, height = 350, 500
local pnlH = 198
local orderHit = "Order A Hit"

/*---------------------------------------------------------
   Name: deso.hit.PlaceHitDerma()
   Desc: Opens the place hit derma frame
---------------------------------------------------------*/
function deso.hit.PlaceHitDerma()
	local dFrame = vgui.Create("DFrame")
	dFrame:SetSize(width, height)
	dFrame:Center()
	dFrame:SetDraggable(false)
	dFrame:SetTitle('')
	dFrame:MakePopup()

	function dFrame:Paint(w, h)
		surface.SetDrawColor(deso.col.dark)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(deso.col.outline)
		surface.DrawOutlinedRect(0, 0, w, h)

		draw.SimpleTextOutlined(orderHit, "deso_vgui_title", 14, 10, deso.col.text, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 2, deso.col.outline)
	end

	/* Top */

	local pickPnl = vgui.Create("DPanel", dFrame)
	pickPnl:SetSize(0, pnlH)
	pickPnl:Dock(TOP)
	pickPnl:DockMargin(2, 38, 2, 2)

	function pickPnl:Paint(w, h)
		surface.SetDrawColor(deso.col.light)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(deso.col.outline)
		surface.DrawOutlinedRect(0, 0, w, h)
	end

	local plyList = vgui.Create("DScrollPanel", pickPnl)
	plyList:SetSize(180, 0) -- height doesn't matter because of docking
	plyList:Dock(LEFT)
	plyList:DockMargin(6, 6, 6, 6)

	for _, ply in pairs(player.GetAll()) do -- looping through players to construct the player list
		local marginFix = 6
		if (_ > 1) then marginFix = 0 end

		local plyCell = vgui.Create("DButton", plyList)
		plyCell:SetSize(0, 30)
		plyCell:Dock(TOP)
		plyCell:DockMargin(6, marginFix, 6, 6)
		plyCell:SetText('')

		function plyCell:Paint(w, h)
			local mainCol = deso.col.light
			local textCol = team.GetColor(ply:Team())

			if (self:IsHovered() || self:IsDown()) then
				mainCol = deso.col.text
				textCol = deso.col.white
			end

			surface.SetDrawColor(mainCol)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(deso.col.outline)
			surface.DrawOutlinedRect(0, 0, w, h)

			draw.SimpleText(ply:Nick(), "deso_vgui_bold", w / 2, h / 2, textCol, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end

	local plyListBottomMargin = vgui.Create("DPanel", plyList)
	plyListBottomMargin:SetTall(2)
	plyListBottomMargin:Dock(TOP)

	function plyListBottomMargin:Paint() end

	function plyList:Paint(w, h)
		surface.SetDrawColor(deso.col.dark)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(deso.col.outline)
		surface.DrawOutlinedRect(0, 0, w, h)
	end

	local bar = plyList:GetVBar()
	
	function bar:Paint(w, h)
		surface.SetDrawColor(deso.col.dark)
		surface.DrawRect(0, 0, w, h)
	end

	function bar.btnGrip:Paint(w, h)
		surface.SetDrawColor(deso.col.light)
		surface.DrawRect(0, 0, w - 6, h)

		surface.SetDrawColor(deso.col.outline)
		surface.DrawOutlinedRect(0, 0, w - 6, h)
	end

	function bar.btnUp:Paint() end
	function bar.btnDown:Paint() end

	local plyInfo = vgui.Create("DPanel", pickPnl)
	plyInfo:Dock(FILL)
	plyInfo:DockMargin(0, 6, 6, 6)
	
	function plyInfo:Paint(w, h)
		surface.SetDrawColor(deso.col.dark)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(deso.col.outline)
		surface.DrawOutlinedRect(0, 0, w, h)
	end

	/* Bottom */

	local infoPnl = vgui.Create("DPanel", dFrame)
	infoPnl:Dock(FILL)
	infoPnl:DockMargin(2, 4, 2, 2)

	function infoPnl:Paint(w, h)
		surface.SetDrawColor(deso.col.light)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(deso.col.outline)
		surface.DrawOutlinedRect(0, 0, w, h)
	end
end