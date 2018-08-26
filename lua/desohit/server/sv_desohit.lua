/*---------------------------------------------------------
   Name: deso.hit.OpenPlaceHitDerma()
   Desc: Sends net message to client to open the derma frame
---------------------------------------------------------*/
function deso.hit.OpenPlaceHitDerma(ply)
	net.Start("desohit_open_placehit_pnl")
	net.Send(ply)
end