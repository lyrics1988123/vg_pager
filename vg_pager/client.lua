


RegisterNetEvent('vg_pager:receiveNotification')
AddEventHandler('vg_pager:receiveNotification', function(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, true)
end)