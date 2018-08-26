/*---------------------------------------------------------
   Name: deso.hit.PlaceHitDerma()
   Desc: Opens the place hit derma frame
---------------------------------------------------------*/
function deso.hit.PlaceHitDerma()
	local dframe = vgui.Create("DFrame")
	dframe:SetSize(300, 500)
	dframe:Center()
	dframe:SetDraggable(false)
	dframe:SetTitle('')
	dframe:MakePopup()
end