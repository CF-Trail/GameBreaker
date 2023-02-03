local repo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/'
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()

local function load()
  task.spawn(function()
    loadstring(game:HttpGet(repo .. tostring(game.PlaceId)))
  end)
end

if not pcall(load) then
     NotificationLibrary:SendNotification("Error", "Game is not supported", 3)
else
     NotificationLibrary:SendNotification("Success", "Game supported", 3)
end
