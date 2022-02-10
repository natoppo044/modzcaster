
loadstring(game:HttpGet("https://raw.githubusercontent.com/natoppo044/modzcaster/main/startload.lua", true))()
local Fast = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
_G.Fastattack = true -- true\false
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.Fastattack then
Fast.activeController.timeToNextAttack = 0
Fast.activeController.hitboxMagnitude = 50
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(686, 352))
CameraShaker.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
end
end)
end)
