local Config = lib.load('config')
local QBX = exports.qbx_core

local function Notify(source, data)
    lib.notify(source, data)
end

local function fitbitLoop(player)
    if exports.ox_inventory:Search(player.PlayerData.source, "count", Config.item) >= 1 then
        local pData = Player(player.PlayerData.source).state
        if pData.stress >= Config.notifystress then
            Notify(player.PlayerData.source, {
                title = 'Stress',
                description = 'You are feeling stressed!',
                position = 'top',
                type = 'warning',
                icon = Config.icons.stress,
                iconAnimation = 'shake',
                duration = Config.stressnotificationduration,
                set = Config.audio.set,
                name = Config.audio.name
            })
        end

        if pData.hunger <= Config.notifyhunger then
            Notify(player.PlayerData.source, {
                title = 'Hunger',
                description = 'You are feeling hungry!',
                position = 'top',
                type = 'warning',
                icon = Config.icons.hunger,
                iconAnimation = 'shake',
                duration = Config.hungernotificationduration,
                set = Config.audio.set,
                name = Config.audio.name
            })
        end

        if pData.thirst <= Config.notifythirst then
            Notify(player.PlayerData.source, {
                title = 'Thirst',
                description = 'You are feeling thirsty!',
                position = 'top',
                type = 'warning',
                icon = Config.icons.thirst,
                iconAnimation = 'shake',
                duration = Config.thirstnotificationduration,
                set = Config.audio.set,
                name = Config.audio.name
            })
        end
    end
end

CreateThread(function()
    local interval = Config.notifytimems
    while true do
        Wait(interval)
        for _, player in pairs(QBX:GetQBPlayers()) do
            fitbitLoop(player)
        end
    end
end)
