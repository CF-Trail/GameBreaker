local repo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/'
local gameRepo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/gameIds/'
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()
local bool = false
pcall(function()
    task.spawn(function()
       loadstring(game:HttpGet(repo .. tostring(game.PlaceId)))()
    end)
    bool = true
end)
if bool == false then
  pcall(function()
    task.spawn(function()
       loadstring(game:HttpGet(gameRepo .. tostring(game.GameId)))()
    end)
    bool = true
  end)
end
if bool == true then
  NotificationLibrary:SendNotification("Success", "Game supported", 4)
else
  NotificationLibrary:SendNotification("Error", "Game is not supported", 4)  
end
