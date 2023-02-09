local bool = false
local repo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/'
local gameRepo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/gameIds/'
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()
pcall(function()
    loadstring(game:HttpGet(repo .. tostring(game.PlaceId)))()
    bool = true
    NotificationLibrary:SendNotification("Success", "Game supported", 4)
end)
if bool == false then
  pcall(function()
    loadstring(game:HttpGet(gameRepo .. tostring(game.GameId)))()
    bool = true
    return
  end)
  NotificationLibrary:SendNotification("Error", "Game is not supported", 4)  
end
