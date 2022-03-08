
if game:GetService("CoreGui"):FindFirstChild("BlackTrap") then
    game:GetService("CoreGui")["BlackTrap"]:Destroy()
end

if game.PlaceId == 6284583030 then
    local start = tick()
    repeat task.wait() until game:isLoaded()
    repeat task.wait() until game:GetService("Players")
    repeat task.wait() until game:GetService("Players").LocalPlayer
    repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled
    repeat task.wait() until game:GetService("Workspace"):FindFirstChild('__MAP')
end

-- lib & service
local Blacklib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sky2836/Sanz/main/BlackTrap%20V.1.2.lua"))()
local Player = game:GetService("Players").LocalPlayer
local VirtualUser = game:GetService("VirtualUser")
local HttpService = game:GetService("HttpService")

--Win
local Win = Blacklib:Window("Pet Simulator X")

--Farming
local Main = Win:Tab("• Main", "rbxassetid://8825654232")
local Farm = Main:NewSection("Auto Farming")
local Chest = Main:NewSection("Auto Chest")
local SetFarm = Main:NewSection("Farming Setting's")
-----------------------------------------
-----------------------------------------
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "buy egg")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "join coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "farm coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "claim orbs")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "change pet target")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "get trade")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "add trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "remove trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem rank rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem vip rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "toggle setting")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "activate boost")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "convert to dark matter")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use golden machine")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use rainbow machine")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use fuse pets machine")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "fuse pets")
-----------------------------------------
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("Unlucky.")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

-- Main
local Run_Service = game:GetService("RunService")
local rs = Run_Service.RenderStepped
local CurrencyOrder = {"Halloween Candy", "Gingerbread", "Rainbow Coins", "Tech Coins", "Fantasy Coins", "Coins", "Diamonds",}
local IMightKillMyselfCauseOfThis = {
    --Misc
    ['VIP'] = {'VIP'};
    --Spawn
    ['Town'] = {'Town', 'Town FRONT'};
    ['Forest'] = {'Forest', 'Forest FRONT'};
    ['Beach'] = {'Beach', 'Beach FRONT'};
    ['Mine'] = {'Mine', 'Mine FRONT'};
    ['Winter'] = {'Winter', 'Winter FRONT'};
    ['Glacier'] = {'Glacier', 'Glacier Lake'};
    ['Desert'] = {'Desert', 'Desert FRONT'};
    ['Volcano'] = {'Volcano', 'Volcano FRONT'};
    -- Fantasy init
    ['Enchanted Forest'] = {'Enchanted Forest', 'Enchanted Forest FRONT'};
    ['Ancient Island'] = {'Ancient Island'};
    ['Samurai Island'] = {'Samurai Island', 'Samurai Island FRONT'};
    ['Candy Island'] = {'Candy Island'};
    ['Haunted Island'] = {'Haunted Island', 'Haunted Island FRONT'};
    ['Hell Island'] = {'Hell Island'};
    ['Heaven Island'] = {'Heaven Island'};
    -- Tech
    ['Ice Tech'] = {'Ice Tech'};
    ['Tech City'] = {'Tech City'; 'Tech City FRONT'};
    ['Dark Tech'] = {'Dark Tech'; 'Dark Tech FRONT'};
    ['Steampunk'] = {'Steampunk'; 'Steampunk FRONT'};
    ['Alien Forest'] = {"Alien Forest"; "Alien Forest FRONT"};
    ['Alien Lab'] = {"Alien lab"; "Alien Lab FRONT"};
    ['Glitch'] = {"Glitch"; "Glitch FRONT"};
    ['Hacker Portal'] = {"Hacker Portal"; "Hacker Portal FRONT"};
    -- Axolotls
    ['Axolotl Ocean'] = {"Axolotl Ocean"; "Axolotl Ocean FRONT"};
    ['Axolotl Deep Ocean'] = {"Axolotl Deep Ocean"; "Axolotl Deep Ocean FRONT"};
    ['Axolotl Cave'] = {"Axolotl Cave"; "Axolotl Cave FRONT"};
}

local AreaList = {
    'All'; 'VIP';
    '--- SPAWN WORLD ---';
    'Town'; 'Forest'; 'Beach'; 'Mine'; 'Winter'; 'Glacier'; 'Desert'; 'Volcano';
    '--- FANTASY WORLD ---';
    'Enchanted Forest'; 'Ancient Island'; 'Samurai Island'; 'Candy Island'; 'Haunted Island'; 'Hell Island'; 'Heaven Island';
    '--- TECH WORLD ---';
    'Ice Tech'; 'Tech City'; 'Dark Tech'; 'Steampunk'; 'Alien Lab'; 'Alien Forest'; 'Glitch'; 'Hacker Portal';
    '--- AXOLOTLS WORLD ---';
    'Axolotl Ocean'; 'Axolotl Deep Ocean'; 'Axolotl Cave';
}

local Chests = {
    "All";
    '--- SPAWN WORLD ---';
    "Volcano Magma Chest";
    '--- FANTASY WORLD ---';
    "Enchanted Forest Chest"; "Ancient Island Enchanted Chest"; "Haunted Island Haunted Chest"; "Hell Island Hell Chest"; "Heaven Island Angel Chest"; "Heavens Gate Grand Heaven Chest";
    '--- TECH WORLD ---',
    "Giant Tech Chest"; "Giant Steampunk Chest"; "Giant Alien Chest"; "Giant Hacker Chest";
    '--- AXOLOTLS WORLD ---';
    "Giant Ocean Chest";
    '--- OTHERS WORLD ---';
    "Giant Present"; "Diamonds";
}
-----------------------------------------

function AllChests()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit["index"] = i
        for aa,bb in pairs(Chests) do
            if string.find(v.n, bb) then
                local thing = string.gsub(v.n, bb.." ", " ")
                if table.find(Chests, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end

function FarmCoin(CoinID, PetID)
    game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
    game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
end

function GetMyPets()
   local returntable = {}
   for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
       if v.ClassName == 'TextButton' and v.Equipped.Visible then
            table.insert(returntable, v.Name)
        end
    end
    return returntable
end

function GetCoinsNormal(area)
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        if string.lower(v.a) == string.lower(area) then
            table.insert(returntable, i)
        end
    end
    return returntable
end

function GetCoinsChest(chest)
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        for aa,bb in pairs(Chests:GetChildren()) do
            if string.lower(bb) == string.lower(chest) then
                table.insert(returntable, i)
            end
        end
    end
    return returntable
end

function GetCoins(area, exclude)
    exclude = exclude or {}
    local Areas = (IMightKillMyselfCauseOfThis)
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        if _G.AreaFarm == "All" or table.find(Areas[_G.AreaFarm], v.a) and not table.find(exclude, v.n) then
            local shit = v
            shit["index"] = i
            table.insert(returntable, shit)
         end
    end
    return returntable
end

function GetCoinTable(area, Type, exclude)
    exclude = exclude or {}
    local CoinTable = GetCoins(area, exclude)
    local function getKeysSortedByValue(tbl, sortFunction)
        local keys = {}
        for key in pairs(tbl) do
            table.insert(keys, key)
        end
        table.sort(keys, function(a, b)
            return sortFunction(tbl[a].h, tbl[b].h)
        end)
        return keys
    end
    local sortedKeys
    if Type == 'Highest' then
        sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
    elseif Type == 'Lowest' then
        sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a < b end)
    end
    local newCoinTable = {}
    for i,v in pairs(sortedKeys) do
        table.insert(newCoinTable, CoinTable[v])
    end
    return newCoinTable
end

if _G.MyConnection then
    _G.MyConnection:Disconnect()
end
_G.MyConnection = game.Workspace.__THINGS.Orbs.ChildAdded:Connect(function(Orb)
    game.Workspace.__THINGS.__REMOTES["claim orbs"]:FireServer({{Orb.Name}})
end)
-----------------------------------------
Farm:Dropdown("Select Area List", AreaList, function(areafunc)
    _G.AreaFarm = areafunc
end)

Farm:Toggle("Multi Target Type_1", function(multifunc)
    _G.MultiTarget = multifunc
    local CurrentFarmingPets = {}
    while _G.MultiTarget do
        local pethingy = GetMyPets()
        local cointhiny = GetCoins(_G.AreaFarm)
        for i = 1, #cointhiny do
            if i%#pethingy == #pethingy-1 then wait() end
            if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
                spawn(function()
                    CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                    FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0
                    CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                end)
            end
        end
    end
end)

Farm:Toggle("Multi Target Type_2", function(multifunc2)
    _G.MultiTarget2 = multifunc2
    local CurrentFarmingPets = {}
    while _G.MultiTarget2 do
        local pethingy = GetMyPets()
        local cointhiny = GetCoinsNormal(_G.AreaFarm)
        for i = 1, #cointhiny do
            if i%#pethingy == #pethingy-1 then wait() end
            if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
                coroutine.wrap(function()
                    CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                    FarmCoin(cointhiny[i], pethingy[i%#pethingy+1])
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i]) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i]).Pets:GetChildren() == 0
                    CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                end)()
            end
        end
    end
end)

Farm:Toggle("Multi Target Type_3 (Rec. for OP Pets)", function(multifunc3)
    _G.MultiTarget3 = multifunc3
    while _G.MultiTarget3 do
        local pethingy = GetMyPets()
        local cointhiny = GetCoinsNormal(_G.AreaFarm)
        for i = 1, #cointhiny do
            pcall(function()
                FarmCoin(cointhiny[i%#cointhiny+1], pethingy[i%#pethingy+1])
            end)
        end
    end
end)

Farm:Toggle("Low Value (Priority)", function(lowvaluefunc)
    _G.LowVal = lowvaluefunc
    local CurrentFarmingPets = {}
    while task.wait() and _G.LowVal do
        local pethingy = GetMyPets()
        local cointhiny = GetCoinTable(_G.AreaFarm, 'Lowest')
        for i = 1, (#cointhiny >= #pethingy and #pethingy or #cointhiny) do
            if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
                coroutine.wrap(function()
                    CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                    FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                    repeat task.wait(0.0001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0 or not _G.LowVal
                    CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                end)()
            end
        end
    end
end)

Farm:Toggle("High Value (Priority)", function(highvaluefunc)
    _G.HighVal = highvaluefunc
    local CurrentFarmingPets = {}
    while task.wait() and _G.HighVal do
        local pethingy = GetMyPets()
        local cointhiny = GetCoinTable(_G.AreaFarm, 'Highest')
        if #cointhiny >= 3 then
            local CurrentFarmingPets = {}
            for a = 1, 3 do
                coroutine.wrap(function()
                    if CurrentFarmingPets[a] == nil then
                        for petnum = a, #pethingy, 3 do
                            coroutine.wrap(function()
                                if not CurrentFarmingPets[a] then CurrentFarmingPets[a] = {} end
                                    if CurrentFarmingPets[a] ~= nil and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[a].index) and not table.find(CurrentFarmingPets[a], pethingy[petnum]) then
                                       table.insert(CurrentFarmingPets[a], pethingy[petnum])
                                       FarmCoin(cointhiny[a].index, pethingy[petnum]) 
                                    end
                            end)()
                        end
                        repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[a].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[a].index].Pets:GetChildren() == 0  or not _G.HighVal
                            CurrentFarmingPets[a] = nil
                    end
                end)()
            end
            else
                task.wait()
        end
    end
end)

Farm:Toggle("Normal", function(normalfynx)
    _G.FarmNorm = normalfynx
    local CurrentFarmingPets = {}
    while task.wait() and _G.FarmNorm do
        local pethingy = GetMyPets ()
        local cointhiny = GetCoins(_G.AreaFarm)
        for i = 1, #cointhiny do
            if _G.FarmNorm and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
                for _, bb in pairs(pethingy) do
                    coroutine.wrap(function()
                        FarmCoin(cointhiny[i].index, bb)
                    end)()
                end
                repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or not _G.FarmNorm
            end
        end
    end
end)

Farm:Toggle("Nearest", function(nearfync)
    _G.NearestF = nearfync
    local CurrentFarmingPets = {}
    while task.wait() and _G.NearestF do
        local pethingy = GetMyPets()
        local cointhiny = nil
        local cointable = game:GetService("Workspace")["__THINGS"].Coins:GetChildren()
        table.sort(cointable, function(i, v)
            return (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - i.POS.Position).magnitude < (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.POS.Position).magnitude
        end)
        local NearestOne = cointable[1]
        if NearestOne ~= nil then
            for a,b in pairs(pethingy) do
                coroutine.wrap(function()
                    if NearestOne ~= nil then
                        FarmCoin(NearestOne.Name, b)
                    end
                end)()
            end
            repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(NearestOne.Name) or #game:GetService("Workspace")["__THINGS"].Coins[NearestOne.Name].Pets:GetChildren() == 0
                else
                    task.wait()
        end
    end
end)

Farm:Toggle("Position", function(minifarmfunc)
    _G.MiniFarm = minifarmfunc
    while _G.MiniFarm do
        local dist = math.huge
		local target = nil
		for i,v1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
			for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
			    if v1.ClassName == "TextButton" then
					if v.ClassName == "Folder" then
						if v:FindFirstChild("Coin") then
							if v.Coin.Transparency == 0 then
								local magnitude = (v.Coin.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
							    if magnitude < dist then
						    		dist = magnitude
						    		target = v.Name
					    			workspace.__THINGS.__REMOTES["join coin"]:InvokeServer({tostring(target),{tostring(v1.Name)}})
						    		workspace.__THINGS.__REMOTES["farm coin"]:FireServer({tostring(target),tostring(v1.Name)})
							    end
							end
						end
					end
			    end
			end
		end
    end
end)
-----------------------------------------
Chest:Dropdown("Chest List", Chests, function(chestlistfunc)
    _G.ListChest = chestlistfunc
end)

Chest:Toggle("Chest Farm Type_1 (Recomended)", function(chestfunc)
    _G.ChestFarm = chestfunc
    local CurrentFarmingPets = {}
    while _G.ChestFarm do
        local pethingy = GetMyPets()
        for i,v in pairs(AllChests()) do
            if (v.n == _G.ListChest) or (_G.ListChest == 'All') then
                local StartTick = tick()
                for a,b in pairs(pethingy) do
                    coroutine.wrap(function()
                        FarmCoin(v.index, b)
                        tick(StartTick)
                        repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index).Pets:GetChildren() == 0 or tick() > StartTick + 1 or not _G.ChestFarm
                    end)()
                end
            end
        end
    end
end)

Chest:Toggle("Chest Farm Type_2 (Temporary got bug)", function(chestfunc3)
    _G.ChestFarm3 = chestfunc3
    local CurrentFarmingPets = {}
    while rs:wait() and _G.ChestFarm3 do
        local pethingy = GetMyPets()
        for i,v in pairs(AllChests()) do
            if (v.n == _G.ListChest) or (_G.ListChest == 'All') then
                local StartTick = tick()
                for a,b in pairs(pethingy) do
                    spawn(function()
                        FarmCoin(v.index, b)
                        tick(StartTick)
                        repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index).Pets:GetChildren() == 0 or tick() > StartTick + 1 or not _G.ChestFarm
                    end)
                end
            end
        end
    end
end)

Chest:Toggle("Chest Farm Type_3 (Multi)", function(chestfunc2)
    _G.ChestFarm2 = chestfunc2
    local CurrentFarmingPets = {}
    while _G.ChestFarm2 do
        local pethingy = GetMyPets()
        for i,v in pairs(AllChests()) do
            if (v.n == _G.ListChest) or (_G.ListChest == 'All') then
                local StartTick = tick()
                coroutine.wrap(function()
                    FarmCoin(v.index, pethingy[v.index%#pethingy])
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index).Pets:GetChildren() == 0 or not _G.ChestFarm
                end)()
            end
        end
    end
end)
-----------------------------------------
SetFarm:Toggle("Lootbag", function(lootbagfunc)
    _G.Lootbag = lootbagfunc
    local Running = {}
    while wait() and _G.Lootbag do
        for i, v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
            spawn(function()
                if v ~= nil and v.ClassName == 'MeshPart' then
                    if not Running[v.Name] then
                        Running[v.Name] = true
                        local StartTick = tick()
                        v.Material = "SmoothPlastic"
                        v.Transparency = 1
                        v.Reflectance = 0
                        for i2,v2 in pairs(v:GetChildren()) do
                            if not string.find(v2.Name, "Body") then
                                v2:Destroy()
                            end
                        end
                        repeat task.wait()
                            v.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        until v == nil or not v.Parent or tick() > StartTick + 1
                        Running[v.Name] = nil
                    end
                end
            end)
        end
    end
end)

SetFarm:Toggle("Auto Activated Triple Damage", function(autotripledamage)
    _G.TripleDamage1 = autotripledamage
    while task.wait() and _G.TripleDamage1 do
        if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Damage") then
            workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Triple Damage"})
            repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Damage") or not _G.TripleDamage1
        end
    end
end)
SetFarm:Toggle("Auto Activated Triple Coins", function(autotriplecoins)
    _G.TripleCoins1 = autotriplecoins
    while task.wait() and _G.TripleCoins1 do
        if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Coins") then
            workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Triple Coins"})
            repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Coins") or not _G.TripleCoins1
        end
    end
end)

SetFarm:Toggle("Disable Coin HUD", function(refunc)
    _G.Hud = refunc
end)
spawn(function()
    while wait() do
        if _G.Hud then
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Coin Rewards HUD"].Disabled = true
        elseif not _G.Hud then
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Coin Rewards HUD"].Disabled = false
        end
    end
end)

SetFarm:Button("Lag Reduced", function()
    local a = game:GetService("Workspace")["__DEBRIS"]
    local b = a:Clone()
    b.Parent = a.Parent
    a:Destroy()
    for _,v in pairs(b:GetChildren()) do
        if v.Name == 'RewardBillboard' then
            v:Destroy()
        end
    end
end)

-----------------------------------------
-----------------------------------------
-----------------------------------------
-- Auto Egg
local Main_2 = Win:Tab("• Eggs", "rbxassetid://8825651806")
local Eggs = Main_2:NewSection("Auto Hatch Eggs")
local EggSet = Main_2:NewSection("Eggs Setting's")
-----------------------------------------
-----------------------------------------
local EggData = {}
local ListEgg = game:GetService("ReplicatedStorage").Game.Eggs
for i,v in pairs(ListEgg:GetChildren()) do
    if v.Name == 'Axolotl Ocean' or v.Name == 'Tech Eggs' or v.Name == 'Fantasy Eggs' or v.Name == 'Spawn Eggs' or v.Name == 'Other' then
        table.insert(EggData, "--- " .. v.Name .. " World ---")
        for aa,bb in pairs(v:GetChildren()) do
            if v.Name == 'Tech Eggs' or v.Name == 'Axolotl Ocean' or v.Name == 'Other' or v.Name == 'Fantasy Eggs' or v.Name == 'Spawn Eggs' then
                table.insert(EggData, bb.Name)
            end
        end
    end
end

Eggs:Label("Can (input Egg Name) or (Select Egg) for choose Eggs.")

Eggs:TextBox("Enter Eggs Name", "Type Here", function(value)
    _G.EggList = value
end)

Eggs:Dropdown("Select Eggs", EggData, function(value)
    _G.EggList = value
end)

Eggs:Toggle("Triple Eggs (if have Gamepassed)", function(tripleeggfunc)
    _G.TripleEggs = tripleeggfunc
end)

Eggs:Toggle("Enable Open Eggs", function(eggfunc)
    _G.OpenEgg = eggfunc
    while _G.OpenEgg do
        local Table1 = {
            [1] = _G.EggList,
            [2] = _G.TripleEggs
        }
        Workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer(Table1)
    end
end)
-----------------------------------------
EggSet:Toggle("Disable Hatch Animation", function(petanim)
    _G.PetAnima = petanim
end)
spawn(function()
    while wait() do
        if _G.PetAnima then
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Open Eggs"].Disabled = true
        elseif not _G.PetAnima then
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Open Eggs"].Disabled = false
        end
    end
end)

EggSet:Toggle("Auto Activated Super Lucky", function(superluckyfunc)
    _G.SuperLucky = superluckyfunc
    while task.wait() and _G.SuperLucky do
        if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Super Lucky") then
            workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Super Lucky"})
            repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Super Lucky") or not _G.SuperLucky
        end
    end
end)

EggSet:Toggle("Auto Activated Ultra Lucky", function(ultraluckyfunc)
    _G.UltraLucky = ultraluckyfunc
    while task.wait() and _G.UltraLucky do
        if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Ultra Lucky") then
            workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Ultra Lucky"})
            repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Ultra Lucky") or not _G.UltraLucky
        end
    end
end)

-----------------------------------------
-----------------------------------------
-----------------------------------------
-- Miss
local Misc = Win:Tab("• Miscellaneous", "rbxassetid://8825656075")
local Remote = Misc:NewSection("Remote Function")
local Mods = Misc:NewSection("Mods")
local Telep = Misc:NewSection("Teleports")
--local Merchant = Misc:NewSection("Merchant")
-----------------------------------------

Remote:Toggle("Auto Claim VIP/Ranks Reward", function(autorewards)
    if autorewards == true then
        _G.AutoRewards1 = true
    elseif autorewards == false then
        _G.AutoRewards1 = false
    end
    while task.wait() and _G.AutoRewards1 do
	    workspace.__THINGS.__REMOTES["redeem vip rewards"]:InvokeServer({})
	    workspace.__THINGS.__REMOTES["redeem rank rewards"]:InvokeServer({})
    end
end)

Remote:Button("Bank Storage", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled
end)

Remote:Button("Merchant", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled
end)

Remote:Button("Pet Collection", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled
end)

Remote:Button("Fuse Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled
end)

Remote:Button("Golden Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled
end)

Remote:Button("Rainbow Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled
end)

Remote:Button("Dark Matter Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled
end)

Remote:Button("Enchant Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.EnchantPets.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.EnchantPets.Enabled
end)

-----------------------------------------
local HoverboardsList = {"Original", "VIP", "Sleigh", "Flame", "Rainbow", "Cat", "Bling", "Blue Flying Carpet", "Red Flying Carpet"}
Mods:Dropdown("Hoverboards Skin", HoverboardsList, function(hoverfunc)
    _G.Hovers = hoverfunc
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sky2836/Sanz/main/Hoverboard"))()
end)

Mods:Button("Unlock GamePassed", function()
    local gmppath = require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Gamepasses"])
    gmppath.Owns = function() return true end
end)
Mods:Button("Visual Dupe Gems", function()
    function comma_value(amount)
    local formatted = amount
	while true do  
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k == 0) then
		    break
	    end
	end
	return formatted
	end

	local diamonds = game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount
	local old = diamonds.Text
	local oldNumber = string.gsub(old, ",", "")
	local newNumber = oldNumber * 10
	local new = comma_value(newNumber)
	local newString = tostring(new)
	diamonds.Text = newString
end)
-----------------------------------------
--Teleport
Telep:Button("Teleport to Trading Plaza", function()
    if game.PlaceId ~= 7722306047 then
        game:GetService("TeleportService"):Teleport(7722306047, Player)
    else
        Blacklib:Notification("Notice.!", "You are already in trading plaza!")
    end
end)

Telep:Button("Teleport to Pet Sim World", function()
    if game.PlaceId ~= 6284583030 then
        game:GetService("TeleportService"):Teleport(6284583030, Player)
    else
        Blacklib:Notification("Notice.!", "You are already in Pet Sim World")
    end
end)


-----------------------------------------
-----------------------------------------
-----------------------------------------
-- Setting'S
local Setting = Win:Tab("• Settings", "rbxassetid://8825671038")
local Config = Setting:NewSection("Config")
local Plyrs = Setting:NewSection("Player")
-----------------------------------------
Config:Button("Set FPS Cap To 10", function()
    setfpscap(10)
end)

Config:Button("Set FPS Cap To 50", function()
    setfpscap(50)
end)

Config:Button("Set FPS Cap To 100", function()
    setfpscap(100)
end)

Config:Button("FPS Boost",function(t)
	local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
	local g = game
	local w = g.Workspace
	local l = g.Lighting
	local t = w.Terrain
	t.WaterWaveSize = 0
	t.WaterWaveSpeed = 0
	t.WaterReflectance = 0
	t.WaterTransparency = 0
	l.GlobalShadows = false
	l.FogEnd = 9e9
	l.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	for i, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		end
	end
	for i, e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end)

Config:Button("Rejoin", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

Config:Button("Server Hop", function()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								-- delfile("NotSameServers.json")
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(.1)
				end
			end
		end
	end
	function Teleport() 
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end)

Config:Button("Teleport To Lower Server",function()
	local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
	if not _G.FailedServerID then _G.FailedServerID = {} end

	local function serversearch()
		data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
		for _, v in pairs(data_table.data) do
			pcall(function()
				if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
					maxplayers = v.playing
					goodserver = v.id
				end
			end)
		end
	end

	function getservers()
		pcall(serversearch)
		for i, v in pairs(data_table) do
			if i == "nextPageCursor" then
				if gamelink:find"&cursor=" then
					local a = gamelink:find"&cursor="
					local b = gamelink:sub(a)
					gamelink = gamelink:gsub(b, "")
				end
				gamelink = gamelink .. "&cursor=" .. v
				pcall(getservers)
			end
		end
	end

	pcall(getservers)
	wait()
	if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
	end
	table.insert(_G.FailedServerID, goodserver)
	game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
end)
spawn(function()
    while wait() do
        pcall(function()
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            game.CoreGui.RobloxPromptGui.promptOverlay.DescendantAdded:Connect(function()
                local GUI = game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
                if GUI then
                    if GUI.TitleFrame.ErrorTitle.Text == "Disconnected" then
                        if #game.Players:GetPlayers() <= 1 then
                            game.Players.LocalPlayer:Kick("\nRejoining...")
                            wait()
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
                        else
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                        end
                    end
                end
            end)
        end)
    end
end)
-----------------------------------------
Plyrs:Slider("Speed", 0, 500, 50, function(val)
    game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = val
end)
Plyrs:Slider("Jump", 0, 1000, 50, function(val)
    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = val
end)
Plyrs:Slider("Fly", 0, 500, 10, function(val)
    game:GetService('Players').LocalPlayer.Character.Humanoid.HipHeight = val
end)

