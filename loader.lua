local repo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/'
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()
local bool = false
pcall(function()
    loadstring(game:HttpGet(repo .. tostring(game.PlaceId)))()
    bool = true
end)

if bool == true then
  NotificationLibrary:SendNotification("Success", "Game supported", 4)
else
  NotificationLibrary:SendNotification("Error", "Game not supported", 4)  
end
