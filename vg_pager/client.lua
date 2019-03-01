

RegisterCommand('pager', function(source, args, raw)
	if args[1] ~= nil then
		local targetPlayer = tonumber(args[1])
		TriggerServerEvent('vg_pager:Pager', targetPlayer)
	end	
end, false)


RegisterNetEvent('vg_pager:Pager')
AddEventHandler('vg_pager:Pager', function(targetPlayer)
	local targetPlayerNetId = NetworkGetNetworkIdFromEntity(targetPlayer)
	--or: local targetPlayerNetId = targetPlayer ----> please test it
	TriggerServerEvent("InteractSound_SV:PlayOnOne", targetPlayerNetId, "soundfile", 0.6) --0.6 is volume
end)

