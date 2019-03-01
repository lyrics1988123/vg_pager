RegisterCommand('pager', function(source, args, raw)
if args[1] ~= nil then
		local targetPlayerNetId = tonumber(args[1])
		--or: local targetPlayerNetId = NetworkGetNetworkIdFromEntity(tonumber(args[1])) ----> please test it
		TriggerEvent("InteractSound_SV:PlayOnOne", targetPlayerNetId, "soundfile", 0.6) --0.6 is volume
		if args[2] ~= nil then
            local text = ""
            for i=2, #args, 1 do
                if (i == 2) then
                    text = args[i]
                else
                    text = text .. " " .. args[i]
                end
            end
        
			TriggerClientEvent("vg_pager:ShowNotification", targetPlayerNetId, text)
		end
	end	
end, false)