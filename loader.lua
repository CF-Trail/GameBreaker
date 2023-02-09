local repo,gameRepo,NotificationLibrary,bool
task.spawn(function()
repo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/'
gameRepo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/gameIds/'
NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()
bool = false
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
end)
if bool == true then
  NotificationLibrary:SendNotification("Success", "Game supported", 4)
else
  NotificationLibrary:SendNotification("Error", "Game is not supported", 4)  
end
