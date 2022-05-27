loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()

--

coroutine.wrap(function()

if getgenv().Settings then

getgenv().setting = {

 Players = nil,

 EspPlayer = true,

 Fov = 0,

 Color = Color3.fromRGB(255,13,13),

 LockPlayers = false,

 FastAttack = true,

 DeleteSounds = false

};end;pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/kickTh/Scriptbloxfruit-/main/Aimbot_For_Mobile.lua'))(); end)

return (getgenv().setting);

end)();
