


RegisterCommand('pager', function(source, args, raw)
if args[1] ~= nil then
		local targetPlayerNetId = tonumber(args[1])
		--or: local targetPlayerNetId = NetworkGetNetworkIdFromEntity(tonumber(args[1])) ----> please test it
		TriggerEvent("InteractSound_SV:PlayOnOne", targetPlayerNetId, "soundfile", 0.6) --0.6 is volume
		if args[2] ~= nil then
			local text = args[2]
			TriggerClientEvent("vg_pager:ShowNotification", targetPlayer, text)
		end
	end	
end, false)


