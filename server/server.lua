ESX = exports["es_extended"]:getSharedObject()

function GetSomeoneRangMessage(label)
    return string.format(Config.SomeoneRangTemplate, label)
end

RegisterNetEvent('alpaka_doorbell:NotifyJob')
AddEventHandler('alpaka_doorbell:NotifyJob', function(job)
    local xPlayers = ESX.GetExtendedPlayers('job', job)

    for _, bell in ipairs(Config.Bells) do
        if bell.job == job then  -- Überprüfen, ob der Job übereinstimmt
            local notificationMessage = GetSomeoneRangMessage(bell.label)  -- Nachricht mit dem Label erstellen

            for i, xPlayer in ipairs(xPlayers) do
                TriggerClientEvent('ox_lib:notify', xPlayer.source, {title = "Klingel", description = notificationMessage, duration = 5000})
            end
        end
    end
end)