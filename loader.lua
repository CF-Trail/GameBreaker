local repo = 'https://raw.githubusercontent.com/CF-Trail/GameBreaker/main/games/'
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()
local loadnx

local function loader()
  task.spawn(function()
    loadnx = game:HttpGet(repo .. tostring(game.PlaceId))
  end)
end

if not pcall(loader) then
     NotificationLibrary:SendNotification("Error", "Game is not supported", 3)
else
     NotificationLibrary:SendNotification("Success", "Game supported", 3)
     loadstring(loadnx)()
end
