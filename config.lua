return {
    notifytimems = 60000, -- This is how often the script will check for the player's stats in milliseconds. 60000ms = 1 minute. 1000ms = 1 second.
    notifyhunger = 15, -- This is the hunger level that will trigger the notification. 0-100. So this will trigger when the player's hunger is 15 or lower (15%). will trigger every *notifytimems* check.
    notifythirst = 15, -- Similar to hunger, but for thirst. This is the thirst level that will trigger the notification. 0-100. So this will trigger when the player's thirst is 15 or lower (15%).
    notifystress = 100, -- Similar to hunger, but for stress. This is the stress level that will trigger the notification. 0-100. So this will trigger when the player's stress is 100 or higher. Stress isnt in the server so this will never trigger.
    item = "fitbit", -- This is the item that the player needs to have in their inventory for the notifications to trigger. This is case sensitive.

    audio = { -- This is the audio that will play when the notification triggers. You can find the audio sets and names in the audio folder in the FiveM directory.
        set = "HUD_AWARDS", -- This is the audio set that will play when the notification triggers. You can find the audio sets in the audio folder in the FiveM directory.
        name = "CHALLENGE_UNLOCKED", -- This is the audio name that will play when the notification triggers. You can find the audio names in the audio folder in the FiveM directory. I've been trying something with this. itll make the sound when you complete a mission in base gta.
    }, -- These brackets are for the audio. Don't touch them. Just change the values inside them.

    -- DURATIONS; How long will the notification stay for?? 1000ms = 1 second. 7000ms = 7 seconds.
    stressnotificationduration = 7000, -- This is how long the stress notification will stay on the screen for in milliseconds. 7000ms = 7 seconds.
    hungernotificationduration = 7000, -- This is how long the hunger notification will stay on the screen for in milliseconds. 7000ms = 7 seconds.
    thirstnotificationduration = 7000, -- This is how long the thirst notification will stay on the screen for in milliseconds. 7000ms = 7 seconds
    -- DURATIONS END.

    -- ICONS --
    -- These are the icons that will display on the notification. You can find the icons in the fontawesome website. Just copy the class name and paste it here.
    -- Example: <i class="fas fa-burger"></i> would be "fa-solid fa-burger"
    icons = {
        hunger = "fa-solid fa-burger", -- This is the icon that will display on the hunger notification. You can find the icons in the fontawesome website. Just copy the class name and paste it here.
        thirst = "fa-solid fa-bottle-droplet", -- This is the icon that will display on the thirst notification. You can find the icons in the fontawesome website. Just copy the class name and paste it here.
        stress = "fa-solid fa-brain", -- This is the icon that will display on the stress notification. You can find the icons in the fontawesome website. Just copy the class name and paste it here.
    } -- These brackets are for the icons. Don't touch them. Just change the values inside them.

    -- ICONS END --
    -- TITLES -- 
    -- These are the titles that will display on the notification. You can change them to whatever you want.
}