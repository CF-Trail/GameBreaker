local bool
task.spawn(function()
    task.wait(4)
    if bool == true then
        NotificationLibrary:SendNotification("Success", "Game supported", 4)
    else
        NotificationLibrary:SendNotification("Error", "Game is not supported", 4)  
    end
end)
local repo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/'
local gameRepo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/gameIds/'
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()
pcall(function()
    loadstring(game:HttpGet(repo .. tostring(game.PlaceId)))()
    bool = true
end)
if bool == false then
  pcall(function()
    loadstring(game:HttpGet(gameRepo .. tostring(game.GameId)))()
    bool = true
  end)
end
