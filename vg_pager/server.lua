RegisterServerEvent("vg_pager:Pager")
AddEventHandler("vg_pager:Pager", function(targetPlayer)
	TriggerClientEvent("vg_pager:Pager", targetPlayer)
end)