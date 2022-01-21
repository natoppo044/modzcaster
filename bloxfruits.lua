local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Players = game.Players
local Player = Players.LocalPlayer
 
 
 
 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.0941176, 0.309804, 0.713726)
Frame.BorderColor3 = Color3.new(0.0941176, 0.309804, 0.713726)
Frame.Position = UDim2.new(0.00891530514, 0, 0.0973053873, 0)
Frame.Size = UDim2.new(0, 175, 0, 9)
 
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame_2.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame_2.Position = UDim2.new(-0.0025132671, 0, 0.999667346, 0)
Frame_2.Size = UDim2.new(0, 175, 0, 164)
 
TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.new(0.0941176, 0.309804, 0.713726)
TextButton.BorderColor3 = Color3.new(0.0941176, 0.309804, 0.713726)
TextButton.Position = UDim2.new(0.0482275374, 0, 0.0366036035, 0)
TextButton.Size = UDim2.new(0, 159, 0, 46)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Common"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14
TextButton.MouseButton1Click:Connect(function()
 
for i,v in pairs(game:GetDescendants()) do
if v.Name == "TouchInterest"  and v.Parent.Name == "Chest1" then
Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
wait(0.9)
end
end
 
end)
 
TextButton_2.Parent = Frame_2
TextButton_2.BackgroundColor3 = Color3.new(0.0941176, 0.309804, 0.713726)
TextButton_2.BorderColor3 = Color3.new(0.0941176, 0.309804, 0.713726)
TextButton_2.Position = UDim2.new(0.0482275374, 0, 0.353676766, 0)
TextButton_2.Size = UDim2.new(0, 159, 0, 46)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Uncommon"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextSize = 14
TextButton_2.MouseButton1Click:Connect(function()
 
for i,v in pairs(game:GetDescendants()) do
if v.Name == "TouchInterest"  and v.Parent.Name == "Chest2" then
Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
wait(0.9)
end
end
 
 
end)
 
TextButton_3.Parent = Frame_2
TextButton_3.BackgroundColor3 = Color3.new(0.0941176, 0.309804, 0.713726)
TextButton_3.BorderColor3 = Color3.new(0.0941176, 0.309804, 0.713726)
TextButton_3.Position = UDim2.new(0.0482275374, 0, 0.676847458, 0)
TextButton_3.Size = UDim2.new(0, 159, 0, 46)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Rare"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextSize = 14
TextButton_3.MouseButton1Click:Connect(function()
 
for i,v in pairs(game:GetDescendants()) do
if v.Name == "TouchInterest"  and v.Parent.Name == "Chest3" then
Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
wait(0.9)
end
end
 
 
end)
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
TextLabel.Position = UDim2.new(-0.299656123, 0, 19.1475391, 0)
TextLabel.Size = UDim2.new(0, 175, 0, 27)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Made by OvM"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 14