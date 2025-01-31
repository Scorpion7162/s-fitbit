Citizen.CreateThread(function()
    while true do
        Wait(Config.notifytimems)
        local players = exports.qbx_core:GetQBPlayers()
        for _, player in pairs(players) do
            local p = exports.qbx_core:GetPlayer(player.PlayerData.source)
            local src = source


            if exports.ox_inventory:Search(player.PlayerData.source, "count", Config.item) >= 1 then
                local pData = p.PlayerData.metadata
                if pData.stress >= Config.notifystress then
                    TriggerEvent('ox_lib:notify', src, {title = 'Stress', description = 'You are feeling stressed!', position = 'top', type = 'warning', icon = Config.icons.stress, iconAnimation = 'shake', duration = Config.stressnotificationduration, set = Config.audio.set, name = Config.audio.name})
                end

                if pData.hunger <= Config.notifyhunger then
                    TriggerEvent('ox_lib:notify', src, {title = 'Hunger', description = 'You are feeling hungry!', position = 'top', type = 'warning', icon = Config.icons.hunger, iconAnimation = 'shake', duration = Config.hungernotificationduration, set = Config.audio.set, name = Config.audio.name})
                end

                if pData.thirst <= Config.notifythirst then
                    TriggerEvent('ox_lib:notify', src, {title = 'Thirst', description = 'You are feeling thirsty!', position = 'top', type = 'warning', icon = Config.icons.thirst, iconAnimation = 'shake', duration = Config.thirstnotificationduration, set = Config.audio.set, name = Config.audio.name})
                end
            end
        end
    end
end)
