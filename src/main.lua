events:on("OnPlayerSpawn", function(playerid)
    local player = GetPlayer(playerid)
    NextTick(function()
        player:weapons():RemoveWeapons() -- Removes all the weapons from the player
        player:weapons():GiveWeapons("weapon_awp")
    end)
    player:weapons():GiveWeapons("weapon_awp") -- A fix for a case where the player had only a pistol & Gives the actual awp to the player
end)

function GetPluginAuthor()
    return "moongetsu"
end
function GetPluginVersion()
    return "v1.0.0"
end
function GetPluginName()
    return "Swiftly AWP Only (LUA)"
end
function GetPluginWebsite()
    return "https://github.com/swiftly-solution/swiftly_awponly"
end