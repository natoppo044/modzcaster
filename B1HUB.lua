local NameofHub = 'B1 HUB'
local NameofHub2 = 'B1 HUB'

function loadbn()
    do
    if game:GetService("CoreGui"):FindFirstChild("SandaOC") then
        game:GetService("CoreGui"):FindFirstChild("SandaOC"):Destroy()
    end
    if game:GetService("CoreGui"):FindFirstChild("DinoUI") then
        game:GetService("CoreGui"):FindFirstChild("DinoUI"):Destroy()
    end
end

_G.TopBackgroundColor = Color3.fromRGB(40, 40, 40)
_G.TopTextColor = Color3.fromRGB(150, 150, 150)
_G.HubTitleColor = Color3.fromRGB(55, 122, 204)
_G.WindowBackgroundColor = Color3.fromRGB(40, 40, 40)
_G.TabWindowColor = Color3.fromRGB(30, 30, 30)
_G.TabTextColor = Color3.fromRGB(180, 180, 180)
_G.ImageColor = Color3.fromRGB(180, 180, 180)
_G.ElementTextColor = Color3.fromRGB(180, 180, 180)
_G.ElementThemeColor = Color3.fromRGB(39, 86, 144)
--end
local VARIABLESMADEBYTHISUI = {
    [" Made By "] = "Sanda#9197",
    [" New Editable Gui Support Mobile Updated By "] = "Sanda#9197"
}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local SandaOC = Instance.new("ScreenGui")
local WN = Instance.new("Frame")
local WNUICorner = Instance.new("UICorner")
local IM = Instance.new("ImageLabel")
local OCBUTTON = Instance.new("TextButton")
local OCBUTTONUICorner = Instance.new("UICorner")
local TXT = Instance.new("TextLabel")
SandaOC.Name = "SandaOC"
SandaOC.Parent = game.CoreGui
SandaOC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SandaOC.ResetOnSpawn = false
WN.Name = "WN"
WN.Parent = SandaOC
WN.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
WN.Position = UDim2.new(0.0162532087, 0, 0.159420297, 0)
WN.Size = UDim2.new(0.0855432004, 0, 0.161030591, 0)
WN.ZIndex = 20
WNUICorner.CornerRadius = UDim.new(0, 10000)
WNUICorner.Name = "WNUICorner"
WNUICorner.Parent = WN
IM.Name = "IM"
IM.Parent = WN
IM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IM.BackgroundTransparency = 1.000
IM.BorderSizePixel = 0
IM.Position = UDim2.new(0.400000006, 0, 0.0500000007, 0)
IM.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
IM.ZIndex = 20
IM.Image = "rbxassetid://8113888560"
OCBUTTON.Name = "OCBUTTON"
OCBUTTON.Parent = WN
OCBUTTON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OCBUTTON.BackgroundTransparency = 1.000
OCBUTTON.Size = UDim2.new(1, 0, 1, 0)
OCBUTTON.ZIndex = 10
OCBUTTON.Font = Enum.Font.SourceSans
OCBUTTON.Text = ""
OCBUTTON.TextColor3 = Color3.fromRGB(0, 0, 0)
OCBUTTON.TextSize = 14.000
OCBUTTONUICorner.CornerRadius = UDim.new(0, 200000)
OCBUTTONUICorner.Name = "OCBUTTONUICorner"
OCBUTTONUICorner.Parent = OCBUTTON
TXT.Name = "TXT"
TXT.Parent = WN
TXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TXT.BackgroundTransparency = 1.000
TXT.BorderSizePixel = 0
TXT.Size = UDim2.new(1, 0, 1, 0)
TXT.ZIndex = 20
TXT.Font = Enum.Font.Gotham
TXT.Text = "Open/Close"
TXT.TextColor3 = Color3.fromRGB(255, 255, 255)
TXT.TextSize = 14.000
function DragOnMobile(dragger, todrag)
    local UserInputService = game:GetService("UserInputService")
    local gui = dragger
    local guitodrag = todrag
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        guitodrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = guitodrag.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
DragOnMobile(TXT, WN)
OCBUTTON.MouseButton1Click:Connect(function()
    game.CoreGui:FindFirstChild("DinoUI").Enabled = not game.CoreGui:FindFirstChild("DinoUI").Enabled
end)
local Dino = {}
function Dino:CreateWindow(dinotitle, hubtitle)
    local DinoUI = Instance.new("ScreenGui")
    local Window = Instance.new("Frame")
    local DinoHubText1 = Instance.new("TextLabel")
    local DinoHubText2 = Instance.new("TextLabel")
    local WindowText = Instance.new("TextLabel")
    local TabWindow = Instance.new("ScrollingFrame")
    local TabWindowList = Instance.new("UIListLayout")
    local ContainerHolder = Instance.new("Frame")
    
    --Properties:
    
    DinoUI.Name = "DinoUI"
    DinoUI.Parent = game.CoreGui
    DinoUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Window.Name = "Window"
    Window.Parent = DinoUI
    Window.BackgroundColor3 = _G.TopBackgroundColor
    Window.BorderSizePixel = 0
    Window.Position = UDim2.new(0, 392, 0, 264)
    Window.Size = UDim2.new(0, 390, 0, 350)
    
    DinoHubText1.Name = "DinoHubText1"
    DinoHubText1.Parent = Window
    DinoHubText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DinoHubText1.BackgroundTransparency = 1.000
    DinoHubText1.BorderSizePixel = 0
    DinoHubText1.Position = UDim2.new(0, 5, 0, 0)
    DinoHubText1.Size = UDim2.new(0, 35, 0, 20)
    DinoHubText1.Font = Enum.Font.GothamSemibold
    DinoHubText1.Text = hubtitle or "Nil"
    DinoHubText1.TextColor3 = _G.TopTextColor
    DinoHubText1.TextSize = 13.000
    
    DinoHubText2.Name = "DinoHubText2"
    DinoHubText2.Parent = Window
    DinoHubText2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DinoHubText2.BackgroundTransparency = 1.000
    DinoHubText2.BorderSizePixel = 0
    DinoHubText2.Position = UDim2.new(0, 40, 0, 0)
    DinoHubText2.Size = UDim2.new(0, 35, 0, 20)
    DinoHubText2.Font = Enum.Font.GothamSemibold
    DinoHubText2.Text = "Hub |"
    DinoHubText2.TextColor3 = _G.HubTitleColor
    DinoHubText2.TextSize = 13.000
    
    WindowText.Name = "WindowText"
    WindowText.Parent = Window
    WindowText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WindowText.BackgroundTransparency = 1.000
    WindowText.BorderSizePixel = 0
    WindowText.Position = UDim2.new(0, 85, 0, 0)
    WindowText.Size = UDim2.new(0, 305, 0, 20)
    WindowText.Font = Enum.Font.GothamSemibold
    WindowText.Text = dinotitle or "Game Title"
    WindowText.TextColor3 = _G.TopTextColor
    WindowText.TextSize = 13.000
    WindowText.TextXAlignment = Enum.TextXAlignment.Left
    
    TabWindow.Name = "TabWindow"
    TabWindow.Parent = Window
    TabWindow.Active = true
    TabWindow.BackgroundColor3 = _G.TabWindowColor
    TabWindow.BorderSizePixel = 0
    TabWindow.Position = UDim2.new(0, 7, 0, 20)
    TabWindow.Size = UDim2.new(0, 375, 0, 20)
    TabWindow.CanvasSize = UDim2.new(2, 0, 0, 0)
    TabWindow.ScrollBarThickness = 2
    
    TabWindowList.Name = "TabWindowList"
    TabWindowList.Parent = TabWindow
    TabWindowList.FillDirection = Enum.FillDirection.Horizontal
    TabWindowList.SortOrder = Enum.SortOrder.LayoutOrder
    
    ContainerHolder.Name = "ContainerHolder"
    ContainerHolder.Parent = Window
    ContainerHolder.BackgroundColor3 = _G.WindowBackgroundColor
    ContainerHolder.BorderSizePixel = 0
    ContainerHolder.Position = UDim2.new(0, 0, 0, 40)
    ContainerHolder.Size = UDim2.new(0, 390, 0, 310)
    -- Don't Touch This Script Or It Will Mess Up --
    TabWindow.CanvasSize = UDim2.new(0, 0 + TabWindowList.AbsoluteContentSize.X, 0, 0)
    TabWindowList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        TabWindow.CanvasSize = UDim2.new(0, 0 + TabWindowList.AbsoluteContentSize.X, 0, 0)
    end)
    local gui = Window
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    local DinoWindow = {}
    function DinoWindow:NewPage(pagetitle)
        local Container = Instance.new("ScrollingFrame")
        local ContainerList = Instance.new("UIListLayout")
        
        --Properties:
        
        Container.Name = pagetitle or "Container"
        Container.Parent = ContainerHolder
        Container.Active = true
        Container.BackgroundColor3 = _G.WindowBackgroundColor
        Container.BorderSizePixel = 0
        Container.Position = UDim2.new(0, 5, 0, 5)
        Container.Size = UDim2.new(0, 380, 0, 300)
        Container.Visible = false
        Container.CanvasSize = UDim2.new(0, 0, 0, 5 + ContainerList.Padding.Offset + ContainerList.AbsoluteContentSize.Y)
        Container.ScrollBarThickness = 2
        
        ContainerList.Name = "ContainerList"
        ContainerList.Parent = Container
        ContainerList.HorizontalAlignment = Enum.HorizontalAlignment.Center
        ContainerList.SortOrder = Enum.SortOrder.LayoutOrder
        ContainerList.Padding = UDim.new(0, 5)
        -- Don't Touch This Script Or It Will Mess Up --
        ContainerList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            Container.CanvasSize = UDim2.new(0, 0, 0, 0 + ContainerList.Padding.Offset + ContainerList.AbsoluteContentSize.Y)
        end)
        
        Container.ChildAdded:Connect(function()
            Container.CanvasSize = UDim2.new(0, 0, 0, 0 + ContainerList.Padding.Offset + ContainerList.AbsoluteContentSize.Y)
        end)
        local TabButton = Instance.new("TextButton")
        --Properties:
        
        TabButton.Name = "TabButton"
        TabButton.Parent = TabWindow
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.BorderSizePixel = 0
        TabButton.Position = UDim2.new(0, 5, 0, 0)
        TabButton.Size = UDim2.new(0, 100, 0, 20)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.Text = pagetitle or "Tab"
        TabButton.TextColor3 = _G.TabTextColor
        TabButton.TextSize = 13.000
        -- Don't Touch This Script Or It Will Mess Up --
        TabButton.Size = UDim2.new(0, 10 + TabButton.TextBounds.X, 0, 20)
        
        TabButton.MouseButton1Click:Connect(function()
            for _, co in pairs(ContainerHolder:GetChildren()) do
                if co:IsA("ScrollingFrame") then
                    co.Visible = false
                end
            end
            for _, tb in pairs(TabWindow:GetChildren()) do
                if tb:IsA("TextButton") then
                    TweenService:Create(tb, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                end
            end
            TweenService:Create(TabButton, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.4}):Play()
            Container.Visible = true
        end)
        local DinoPage = {}
        function DinoPage:NewSection(sectiontitle)
            local Section = Instance.new("Frame")
            local SectionTitle = Instance.new("TextLabel")
            local SectionIn = Instance.new("Frame")
            local SectionInUICorner = Instance.new("UICorner")
            local SectionInList = Instance.new("UIListLayout")
            
            --Properties:
            
            Section.Name = sectiontitle or "Section"
            Section.Parent = Container
            Section.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Section.Position = UDim2.new(0.0263157897, 0, 0, 0)
            Section.Size = UDim2.new(0, 360, 0, 20)
            
            SectionTitle.Name = "SectionTitle"
            SectionTitle.Parent = Section
            SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionTitle.BackgroundTransparency = 1.000
            SectionTitle.BorderSizePixel = 0
            SectionTitle.Size = UDim2.new(0, 360, 0, 15)
            SectionTitle.Font = Enum.Font.GothamSemibold
            SectionTitle.Text = sectiontitle or "Section"
            SectionTitle.TextColor3 = _G.ElementTextColor
            SectionTitle.TextSize = 13.000
            
            SectionIn.Name = "SectionIn"
            SectionIn.Parent = Section
            SectionIn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            SectionIn.BorderSizePixel = 0
            SectionIn.Position = UDim2.new(0, 0, 0, 20)
            SectionIn.Size = UDim2.new(0, 360, 0, 70)
            
            SectionInUICorner.CornerRadius = UDim.new(0, 2)
            SectionInUICorner.Name = "SectionInUICorner"
            SectionInUICorner.Parent = SectionIn
            
            SectionInList.Name = "SectionInList"
            SectionInList.Parent = SectionIn
            SectionInList.HorizontalAlignment = Enum.HorizontalAlignment.Center
            SectionInList.SortOrder = Enum.SortOrder.LayoutOrder
            SectionInList.Padding = UDim.new(0, 10)
            -- Don't Touch This Script Or It Will Mess Up --
            SectionIn.Size = UDim2.new(0, 360, 0, 5 + SectionInList.AbsoluteContentSize.Y + SectionInList.Padding.Offset)
            SectionInList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                SectionIn.Size = UDim2.new(0, 360, 0, 5 + SectionInList.AbsoluteContentSize.Y + SectionInList.Padding.Offset)
            end)
            
            local function ContainerSizeChange()
                local largestListSize = 0
				largestListSize = SectionInList.AbsoluteContentSize.Y
				
				Container.CanvasSize = UDim2.new(0, 0, 0, largestListSize + 35 + SectionInList.Padding.Offset)
			end
            local function sectionsizechange()
				Section.Size = UDim2.new(0, 360, 0, 20 + SectionInList.AbsoluteContentSize.Y + SectionInList.Padding.Offset)
			end
            ContainerSizeChange()
            sectionsizechange()
            SectionInList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                ContainerSizeChange()
                sectionsizechange()
            end)
            local DinoElement = {}
            function DinoElement:CreateButton(buttontitle, img, buttoncallback)
                local ButtonHolder = Instance.new("TextButton")
                local ButtonHolderUICorner = Instance.new("UICorner")
                local ButtonHolderUIStroke = Instance.new("UIStroke")
                local ButtonImage = Instance.new("ImageLabel")
                
                ButtonHolder.Name = buttontitle or "ButtonHolder"
                ButtonHolder.Parent = SectionIn
                ButtonHolder.BackgroundColor3 = _G.ElementThemeColor
                ButtonHolder.BackgroundTransparency = 0.4
                ButtonHolder.BorderSizePixel = 0
                ButtonHolder.Position = UDim2.new(0, 5, 0, 0)
                ButtonHolder.Size = UDim2.new(0, 350, 0, 25)
                ButtonHolder.AutoButtonColor = false
                ButtonHolder.Font = Enum.Font.GothamSemibold
                ButtonHolder.Text = buttontitle or "Button | Click Me"
                ButtonHolder.TextColor3 = _G.ElementTextColor
                ButtonHolder.TextSize = 13.000
                
                ButtonHolderUICorner.CornerRadius = UDim.new(0, 4)
                ButtonHolderUICorner.Name = "ButtonHolderUICorner"
                ButtonHolderUICorner.Parent = ButtonHolder
                
                ButtonHolderUIStroke.Name = "ButtonHolderUIStroke"
                ButtonHolderUIStroke.Parent = ButtonHolder
                ButtonHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                ButtonHolderUIStroke.Color = _G.ElementThemeColor
                ButtonHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                ButtonHolderUIStroke.Thickness = 1.6
                ButtonHolderUIStroke.Transparency = 0
                ButtonHolderUIStroke.Enabled = true
                ButtonHolderUIStroke.Archivable = true
                
                ButtonImage.Name = "ButtonImage"
                ButtonImage.Parent = ButtonHolder
                ButtonImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ButtonImage.BackgroundTransparency = 1.000
                ButtonImage.BorderSizePixel = 0
                ButtonImage.Position = UDim2.new(0, 5, 0, 3)
                ButtonImage.Size = UDim2.new(0, 18, 0, 18)
                ButtonImage.Image = img or "rbxassetid://7839505809"
                ButtonImage.ImageColor3 = _G.ImageColor
                -- Don't Touch This Script Or It Will Mess Up --
                ButtonHolder.MouseEnter:Connect(function()
                    TweenService:Create(ButtonHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.6}):Play()
                    TweenService:Create(ButtonImage, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0.4}):Play()
                end)
                ButtonHolder.MouseLeave:Connect(function()
                    TweenService:Create(ButtonHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                    TweenService:Create(ButtonImage, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
                    TweenService:Create(ButtonHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 350, 0, 25)}):Play()
                end)
                ButtonHolder.MouseButton1Down:Connect(function()
                    TweenService:Create(ButtonHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 345, 0, 23)}):Play()
                end)
                ButtonHolder.MouseButton1Up:Connect(function()
                    TweenService:Create(ButtonHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 350, 0, 25)}):Play()
                end)
                ButtonHolder.MouseButton1Click:Connect(function()
                    pcall(function()
                        buttoncallback()
                    end)
                end)
            end
            function DinoElement:CreateToggle(toggletitle, img, togglecallback)
                local ToggleHolder = Instance.new("Frame")
                local ToggleHolderUICorner = Instance.new("UICorner")
                local ToggleImage = Instance.new("ImageLabel")
                local ToggleTitle = Instance.new("TextLabel")
                local ToggleOut = Instance.new("ImageLabel")
                local ToggleOutUICorner = Instance.new("UICorner")
                local ToggleIn = Instance.new("ImageLabel")
                local ToggleInUICorner = Instance.new("UICorner")
                local ToggleHolderButton = Instance.new("TextButton")
                local ToggleHolderUIStroke = Instance.new("UIStroke")
                
                --Properties:
                
                ToggleHolder.Name = toggletitle or "ToggleHolder"
                ToggleHolder.Parent = SectionIn
                ToggleHolder.BackgroundColor3 = _G.WindowBackgroundColor
                ToggleHolder.BorderSizePixel = 0
                ToggleHolder.Size = UDim2.new(0, 350, 0, 25)
                
                ToggleHolderUICorner.CornerRadius = UDim.new(0, 1)
                ToggleHolderUICorner.Name = "ToggleHolderUICorner"
                ToggleHolderUICorner.Parent = ToggleHolder
                
                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = ToggleHolder
                ToggleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleImage.BackgroundTransparency = 1.000
                ToggleImage.BorderSizePixel = 0
                ToggleImage.Position = UDim2.new(0, 5, 0, 3)
                ToggleImage.Size = UDim2.new(0, 18, 0, 18)
                ToggleImage.Image = img or "rbxassetid://7832083744"
                ToggleImage.ImageColor3 = _G.ImageColor
                
                ToggleTitle.Name = "ToggleTitle"
                ToggleTitle.Parent = ToggleHolder
                ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleTitle.BackgroundTransparency = 1.000
                ToggleTitle.BorderSizePixel = 0
                ToggleTitle.Position = UDim2.new(0, 25, 0, 0)
                ToggleTitle.Size = UDim2.new(0, 250, 0, 25)
                ToggleTitle.Font = Enum.Font.GothamSemibold
                ToggleTitle.Text = toggletitle or "Toggle | Toggle Me !"
                ToggleTitle.TextColor3 = _G.ElementTextColor
                ToggleTitle.TextSize = 13.000
                ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
                
                ToggleOut.Name = "ToggleOut"
                ToggleOut.Parent = ToggleHolder
                ToggleOut.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                ToggleOut.Position = UDim2.new(0, 310, 0, 4)
                ToggleOut.Size = UDim2.new(0, 34, 0, 16)
                ToggleOut.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                ToggleOut.ImageTransparency = 1.000
                
                ToggleOutUICorner.CornerRadius = UDim.new(0, 1000)
                ToggleOutUICorner.Name = "ToggleOutUICorner"
                ToggleOutUICorner.Parent = ToggleOut
                
                ToggleIn.Name = "ToggleIn"
                ToggleIn.Parent = ToggleOut
                ToggleIn.BackgroundColor3 = _G.ElementThemeColor
                ToggleIn.Position = UDim2.new(0, 2, 0, 2)
                ToggleIn.Size = UDim2.new(0, 12, 0, 12)
                ToggleIn.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                ToggleIn.ImageTransparency = 1.000
                
                ToggleInUICorner.CornerRadius = UDim.new(0, 1000)
                ToggleInUICorner.Name = "ToggleInUICorner"
                ToggleInUICorner.Parent = ToggleIn
                
                ToggleHolderButton.Name = "ToggleHolderButton"
                ToggleHolderButton.Parent = ToggleHolder
                ToggleHolderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleHolderButton.BackgroundTransparency = 1.000
                ToggleHolderButton.BorderSizePixel = 0
                ToggleHolderButton.Size = UDim2.new(0, 350, 0, 25)
                ToggleHolderButton.ZIndex = 2
                ToggleHolderButton.Font = Enum.Font.SourceSans
                ToggleHolderButton.Text = ""
                ToggleHolderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                ToggleHolderButton.TextSize = 14.000
                ToggleHolderUIStroke.Name = "ToggleHolderUIStroke"
                ToggleHolderUIStroke.Parent = ToggleHolder
                ToggleHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                ToggleHolderUIStroke.Color = _G.ElementThemeColor
                ToggleHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                ToggleHolderUIStroke.Thickness = 1.6
                ToggleHolderUIStroke.Transparency = 0
                ToggleHolderUIStroke.Enabled = true
                ToggleHolderUIStroke.Archivable = true
                -- Don't Touch This Script Or It Will Mess Up --
                local toggled = false
                ToggleHolderButton.MouseEnter:Connect(function()
                    TweenService:Create(ToggleTitle, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.2}):Play()
                    TweenService:Create(ToggleImage, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0.2}):Play()
                end)
                ToggleHolderButton.MouseLeave:Connect(function()
                    TweenService:Create(ToggleTitle, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                    TweenService:Create(ToggleImage, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
                    TweenService:Create(ToggleHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 350, 0, 25)}):Play()
                end)
                ToggleHolderButton.MouseButton1Down:Connect(function()
                    TweenService:Create(ToggleHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 345, 0, 23)}):Play()
                end)
                ToggleHolderButton.MouseButton1Up:Connect(function()
                    TweenService:Create(ToggleHolder, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 350, 0, 25)}):Play()
                end)
                ToggleHolderButton.MouseButton1Click:Connect(function()
                    if toggled then
                        TweenService:Create(ToggleIn, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 2)}):Play()
                        toggled = false
                        pcall(function()
                            togglecallback(toggled)
                        end)
                    else
                        TweenService:Create(ToggleIn, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 20, 0, 2)}):Play()
                        toggled = true
                        pcall(function()
                            togglecallback(toggled)
                        end)
                    end
                end)
                
            end
            function DinoElement:CreateSlider(slidertitle, img, minvalue, maxvalue, callback)
                local SliderHolder = Instance.new("Frame")
                local SliderHolderUICorner = Instance.new("UICorner")
                local SliderImage = Instance.new("ImageLabel")
                local SliderHolderTitle = Instance.new("TextLabel")
                local SliderButton = Instance.new("ImageButton")
                local SliderButtonUICorner = Instance.new("UICorner")
                local SliderIn = Instance.new("ImageLabel")
                local SliderInUICorner = Instance.new("UICorner")
                local Val = Instance.new("TextLabel")
                local SliderHolderUIStroke = Instance.new("UIStroke")
                
                --Properties:
                
                SliderHolder.Name = slidertitle or "SliderHolder"
                SliderHolder.Parent = SectionIn
                SliderHolder.BackgroundColor3 = _G.WindowBackgroundColor
                SliderHolder.BorderSizePixel = 0
                SliderHolder.Position = UDim2.new(0, 5, 0, 60)
                SliderHolder.Size = UDim2.new(0, 350, 0, 40)
                
                SliderHolderUICorner.CornerRadius = UDim.new(0, 1)
                SliderHolderUICorner.Name = "SliderHolderUICorner"
                SliderHolderUICorner.Parent = SliderHolder
                
                SliderImage.Name = "SliderImage"
                SliderImage.Parent = SliderHolder
                SliderImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderImage.BackgroundTransparency = 1.000
                SliderImage.BorderSizePixel = 0
                SliderImage.Position = UDim2.new(0, 5, 0, 3)
                SliderImage.Size = UDim2.new(0, 18, 0, 18)
                SliderImage.Image = img or "rbxassetid://7839722369"
                SliderImage.ImageColor3 = _G.ImageColor
                
                SliderHolderTitle.Name = "SliderHolderTitle"
                SliderHolderTitle.Parent = SliderHolder
                SliderHolderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderHolderTitle.BackgroundTransparency = 1.000
                SliderHolderTitle.BorderSizePixel = 0
                SliderHolderTitle.Position = UDim2.new(0, 25, 0, 0)
                SliderHolderTitle.Size = UDim2.new(0, 250, 0, 25)
                SliderHolderTitle.Font = Enum.Font.GothamSemibold
                SliderHolderTitle.Text = slidertitle or "Slider | Hold Me !"
                SliderHolderTitle.TextColor3 = _G.ElementTextColor
                SliderHolderTitle.TextSize = 13.000
                SliderHolderTitle.TextXAlignment = Enum.TextXAlignment.Left
                
                SliderButton.Name = "SliderButton"
                SliderButton.Parent = SliderHolder
                SliderButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                SliderButton.Position = UDim2.new(0, 10, 0, 25)
                SliderButton.Size = UDim2.new(0, 300, 0, 7)
                SliderButton.AutoButtonColor = false
                SliderButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                SliderButton.ImageTransparency = 1.000
                
                SliderButtonUICorner.CornerRadius = UDim.new(0, 1000)
                SliderButtonUICorner.Name = "SliderButtonUICorner"
                SliderButtonUICorner.Parent = SliderButton
                
                SliderIn.Name = "SliderIn"
                SliderIn.Parent = SliderButton
                SliderIn.BackgroundColor3 = _G.ElementThemeColor
                SliderIn.Size = UDim2.new(0, 0, 0, 7)
                SliderIn.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                SliderIn.ImageTransparency = 1.000
                
                SliderInUICorner.CornerRadius = UDim.new(0, 1000)
                SliderInUICorner.Name = "SliderInUICorner"
                SliderInUICorner.Parent = SliderIn
                
                Val.Name = "Val"
                Val.Parent = SliderHolder
                Val.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Val.BackgroundTransparency = 1.000
                Val.BorderSizePixel = 0
                Val.Position = UDim2.new(0, 282, 0, 0)
                Val.Size = UDim2.new(0, 60, 0, 25)
                Val.Font = Enum.Font.GothamSemibold
                Val.Text = minvalue or "0"
                Val.TextColor3 = Color3.fromRGB(150, 150, 150)
                Val.TextSize = 13.000
                Val.TextXAlignment = Enum.TextXAlignment.Right
                SliderHolderUIStroke.Name = "SliderHolderUIStroke"
                SliderHolderUIStroke.Parent = SliderHolder
                SliderHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                SliderHolderUIStroke.Color = _G.ElementThemeColor
                SliderHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                SliderHolderUIStroke.Thickness = 1.6
                SliderHolderUIStroke.Transparency = 0
                SliderHolderUIStroke.Enabled = true
                SliderHolderUIStroke.Archivable = true
                minvalue = minvalue or 0
                maxvalue = maxvalue or 100
                
                
                -----Callback-----
                callback = callback or function() end
                
                
                -----Variables-----
                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")
                local Value;
                
                
                
                
                -----Main Code-----
                
                SliderButton.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 300) * SliderIn.AbsoluteSize.X) + tonumber(minvalue)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 300), 0, 7)
                    moveconnection = mouse.Move:Connect(function()
                        Val.Text = Value
                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 300) * SliderIn.AbsoluteSize.X) + tonumber(minvalue))
                        pcall(function()
                            callback(Value)
                        end)
                        SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 300), 0, 7)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 300) * SliderIn.AbsoluteSize.X) + tonumber(minvalue))
                            pcall(function()
                                callback(Value)
                            end)
                            SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 300), 0, 7)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
            end
            function DinoElement:CreateTextBox(textboxtitle, img, textboxplaceholdertitle,textboxcallback)
                local TextBoxToggle = Instance.new("Frame")
                local TextBoxToggleUICorner = Instance.new("UICorner")
                local TextBoxImage = Instance.new("ImageLabel")
                local TextBoxTitle = Instance.new("TextLabel")
                local TextBox = Instance.new("TextBox")
                local TextBoxHolderUIStroke = Instance.new("UIStroke")
                
                --Properties:
                
                TextBoxToggle.Name = textboxtitle or "TextBoxToggle"
                TextBoxToggle.Parent = SectionIn
                TextBoxToggle.BackgroundColor3 = _G.WindowBackgroundColor
                TextBoxToggle.BorderSizePixel = 0
                TextBoxToggle.Size = UDim2.new(0, 350, 0, 25)
                
                TextBoxToggleUICorner.CornerRadius = UDim.new(0, 1)
                TextBoxToggleUICorner.Name = "TextBoxToggleUICorner"
                TextBoxToggleUICorner.Parent = TextBoxToggle
                
                TextBoxImage.Name = "TextBoxImage"
                TextBoxImage.Parent = TextBoxToggle
                TextBoxImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxImage.BackgroundTransparency = 1.000
                TextBoxImage.BorderSizePixel = 0
                TextBoxImage.Position = UDim2.new(0, 5, 0, 3)
                TextBoxImage.Size = UDim2.new(0, 18, 0, 18)
                TextBoxImage.Image = img or "rbxassetid://7832050494"
                TextBoxImage.ImageColor3 = _G.ImageColor
                
                TextBoxTitle.Name = "TextBoxTitle"
                TextBoxTitle.Parent = TextBoxToggle
                TextBoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxTitle.BackgroundTransparency = 1.000
                TextBoxTitle.BorderSizePixel = 0
                TextBoxTitle.Position = UDim2.new(0, 25, 0, 0)
                TextBoxTitle.Size = UDim2.new(0, 175, 0, 25)
                TextBoxTitle.Font = Enum.Font.GothamSemibold
                TextBoxTitle.Text = textboxtitle or "TextBox"
                TextBoxTitle.TextColor3 = _G.ElementTextColor
                TextBoxTitle.TextSize = 13.000
                TextBoxTitle.TextXAlignment = Enum.TextXAlignment.Left
                
                TextBox.Parent = TextBoxToggle
                TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                TextBox.BorderSizePixel = 0
                TextBox.Position = UDim2.new(0, 210, 0, 4)
                TextBox.Size = UDim2.new(0, 135, 0, 18)
                TextBox.Font = Enum.Font.GothamSemibold
                TextBox.PlaceholderText = textboxplaceholdertitle or "Enter Text"
                TextBox.Text = ""
                TextBox.TextColor3 = _G.ElementTextColor
                TextBox.TextSize = 12.000
                TextBoxHolderUIStroke.Name = "TextBoxHolderUIStroke"
                TextBoxHolderUIStroke.Parent = TextBoxToggle
                TextBoxHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                TextBoxHolderUIStroke.Color = _G.ElementThemeColor
                TextBoxHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                TextBoxHolderUIStroke.Thickness = 1.6
                TextBoxHolderUIStroke.Transparency = 0
                TextBoxHolderUIStroke.Enabled = true
                TextBoxHolderUIStroke.Archivable = true
                TextBox.FocusLost:Connect(function()
                    pcall(function()
                        textboxcallback(TextBox.Text)
                    end)
                end)
            end
            function DinoElement:CreateDropdown(dropdowntitle, img, list, dropdowncallback)
                list = list or {}
                local DropdownHolder = Instance.new("Frame")
                local DropdownHolderUICorner = Instance.new("UICorner")
                local DropdownImage = Instance.new("ImageLabel")
                local DropdownHolderTitle = Instance.new("TextLabel")
                local DropdownButton = Instance.new("TextButton")
                local DropdownIn = Instance.new("Frame")
                local DropdownInList = Instance.new("UIListLayout")
                local DropdownSelectedTitle = Instance.new("TextLabel")
                local DropdownHolderUIStroke = Instance.new("UIStroke")
                
                --Properties:
                
                DropdownHolder.Name = dropdowntitle or "DropdownHolder"
                DropdownHolder.Parent = SectionIn
                DropdownHolder.BackgroundColor3 = _G.WindowBackgroundColor
                DropdownHolder.BorderSizePixel = 0
                DropdownHolder.ClipsDescendants = true
                DropdownHolder.Size = UDim2.new(0, 350, 0, 25)
                
                DropdownHolderUICorner.CornerRadius = UDim.new(0, 1)
                DropdownHolderUICorner.Name = "DropdownHolderUICorner"
                DropdownHolderUICorner.Parent = DropdownHolder
                
                DropdownImage.Name = "DropdownImage"
                DropdownImage.Parent = DropdownHolder
                DropdownImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownImage.BackgroundTransparency = 1.000
                DropdownImage.BorderSizePixel = 0
                DropdownImage.Position = UDim2.new(0, 5, 0, 3)
                DropdownImage.Size = UDim2.new(0, 18, 0, 18)
                DropdownImage.Image = img or "rbxassetid://7831282709"
                DropdownImage.ImageColor3 = _G.ImageColor
                
                DropdownHolderTitle.Name = "DropdownHolderTitle"
                DropdownHolderTitle.Parent = DropdownHolder
                DropdownHolderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownHolderTitle.BackgroundTransparency = 1.000
                DropdownHolderTitle.BorderSizePixel = 0
                DropdownHolderTitle.Position = UDim2.new(0, 25, 0, 0)
                DropdownHolderTitle.Size = UDim2.new(0, 175, 0, 25)
                DropdownHolderTitle.Font = Enum.Font.GothamSemibold
                DropdownHolderTitle.Text = dropdowntitle or "Dropdown | Drop Me !"
                DropdownHolderTitle.TextColor3 = _G.ElementTextColor
                DropdownHolderTitle.TextSize = 13.000
                DropdownHolderTitle.TextXAlignment = Enum.TextXAlignment.Left
                
                DropdownButton.Name = "DropdownButton"
                DropdownButton.Parent = DropdownHolder
                DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownButton.BackgroundTransparency = 1.000
                DropdownButton.BorderSizePixel = 0
                DropdownButton.Size = UDim2.new(0, 350, 0, 25)
                DropdownButton.ZIndex = 2
                DropdownButton.Font = Enum.Font.SourceSans
                DropdownButton.Text = ""
                DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                DropdownButton.TextSize = 14.000
                
                DropdownIn.Name = "DropdownIn"
                DropdownIn.Parent = DropdownHolder
                DropdownIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownIn.BackgroundTransparency = 1.000
                DropdownIn.BorderSizePixel = 0
                DropdownIn.Position = UDim2.new(0, 0, 0, 25)
                DropdownIn.Size = UDim2.new(0, 350, 0, 1)
                
                DropdownInList.Name = "DropdownInList"
                DropdownInList.Parent = DropdownIn
                DropdownInList.SortOrder = Enum.SortOrder.LayoutOrder
                
                DropdownSelectedTitle.Name = "DropdownSelectedTitle"
                DropdownSelectedTitle.Parent = DropdownHolder
                DropdownSelectedTitle.BackgroundColor3 = _G.ElementThemeColor
                DropdownSelectedTitle.BorderSizePixel = 0
                DropdownSelectedTitle.Position = UDim2.new(0, 345, 0, 2)
                DropdownSelectedTitle.Size = UDim2.new(0, -50, 0, 20)
                DropdownSelectedTitle.Font = Enum.Font.GothamSemibold
                DropdownSelectedTitle.Text = "NONE"
                DropdownSelectedTitle.TextColor3 = _G.ElementTextColor
                DropdownSelectedTitle.TextSize = 12.000
                DropdownHolderUIStroke.Name = "DropdownHolderUIStroke"
                DropdownHolderUIStroke.Parent = TextBoxToggle
                DropdownHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                DropdownHolderUIStroke.Color = Color3.fromRGB(35, 78, 130)
                DropdownHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                DropdownHolderUIStroke.Thickness = 1.6
                DropdownHolderUIStroke.Transparency = 0
                DropdownHolderUIStroke.Enabled = true
                DropdownHolderUIStroke.Archivable = true
                -- Don't Touch This Script Or It Will Mess Up --
                DropdownButton.MouseButton1Click:Connect(function()
                    DropdownHolder:TweenSize(UDim2.new(0, 350, 0, 25 + DropdownInList.AbsoluteContentSize.Y), "InOut", "Quad", 0.08, true)
                end)
                DropdownSelectedTitle.Size = UDim2.new(0, 0 - DropdownSelectedTitle.TextBounds.X - 5, 0, 20)
                DropdownSelectedTitle:GetPropertyChangedSignal("Text"):Connect(function()
                    DropdownSelectedTitle.Size = UDim2.new(0, 0 - DropdownSelectedTitle.TextBounds.X - 5, 0, 20)
                end)
                for listindex, listvalue in next, list do
                    local ListButton = Instance.new("TextButton")
                    --Properties:
                    
                    ListButton.Name = listvalue or "ListButton"
                    ListButton.Parent = DropdownIn
                    ListButton.BackgroundColor3 = _G.ElementThemeColor
                    ListButton.BorderSizePixel = 0
                    ListButton.Size = UDim2.new(0, 350, 0, 25)
                    ListButton.AutoButtonColor = false
                    ListButton.Font = Enum.Font.GothamSemibold
                    ListButton.Text = listvalue or "List"
                    ListButton.TextColor3 = _G.ElementTextColor
                    ListButton.TextSize = 14.000
                    ListButton.MouseButton1Click:Connect(function()
                        DropdownHolder:TweenSize(UDim2.new(0, 350, 0, 25), "InOut", "Quad", 0.08, true)
                        DropdownSelectedTitle.Text = ListButton.Text
                        pcall(function()
                            dropdowncallback(ListButton.Text)
                        end)
                    end)
                    
                end
                local DinoDropdown = {}
                function DinoDropdown:RefreshDropdown(newlist)
                    newlist = newlist or {}
                    for _, alllist in pairs(DropdownIn:GetChildren()) do
                        if alllist:IsA("TextButton") then
                            alllist:Destroy()
                        end
                    end
                    for newlistindex, newlistvalue in next, newlist do
                        local ListButton = Instance.new("TextButton")
                        --Properties:
                        
                        ListButton.Name = newlistvalue or "ListButton"
                        ListButton.Parent = DropdownIn
                        ListButton.BackgroundColor3 = _G.ElementThemeColor
                        ListButton.BorderSizePixel = 0
                        ListButton.Size = UDim2.new(0, 350, 0, 25)
                        ListButton.AutoButtonColor = false
                        ListButton.Font = Enum.Font.GothamSemibold
                        ListButton.Text = newlistvalue or "List"
                        ListButton.TextColor3 = _G.ElementTextColor
                        ListButton.TextSize = 14.000
    
                        ListButton.MouseButton1Click:Connect(function()
                            DropdownHolder:TweenSize(UDim2.new(0, 350, 0, 25), "InOut", "Quad", 0.08, true)
                            DropdownSelectedTitle.Text = ListButton.Text
                            pcall(function()
                                dropdowncallback(ListButton.Text)
                            end)
                        end)
                    end
                end
                return DinoDropdown
            end
            function DinoElement:CreateLabel(labeltitle)
                local DropdownHolderTitle = Instance.new("TextLabel")
                --Properties:
                
                DropdownHolderTitle.Name = labeltitle or "DropdownHolderTitle"
                DropdownHolderTitle.Parent = SectionIn
                DropdownHolderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownHolderTitle.BackgroundTransparency = 1.000
                DropdownHolderTitle.BorderSizePixel = 0
                DropdownHolderTitle.Position = UDim2.new(0, 5, 0, 190)
                DropdownHolderTitle.Size = UDim2.new(0, 350, 0, 15)
                DropdownHolderTitle.Font = Enum.Font.GothamSemibold
                DropdownHolderTitle.Text = labeltitle or "This Is A Description"
                DropdownHolderTitle.TextColor3 = _G.ElementTextColor
                DropdownHolderTitle.TextSize = 13.000
                DropdownHolderTitle.TextXAlignment = Enum.TextXAlignment.Left
                local DinoLabel = {}
                function DinoLabel:ChangeLabel(newlabeltitle)
                    DropdownHolderTitle.Text = newlabeltitle
                end
                return DinoLabel
            end
            return DinoElement
        end
        
        return DinoPage
    end
    return DinoWindow
end
-- EDIT NEW !!!!!!!! --
_G.TopBackgroundColor = Color3.fromRGB(40, 40, 40)
_G.TopTextColor = Color3.fromRGB(255, 0, 0)
_G.HubTitleColor = Color3.fromRGB(255, 0, 0)
_G.WindowBackgroundColor = Color3.fromRGB(40, 40, 40)
_G.TabWindowColor = Color3.fromRGB(30,30,30)
_G.TabTextColor = Color3.fromRGB(255, 0, 0)
_G.ImageColor = Color3.fromRGB(180, 180, 180)
_G.ElementTextColor = Color3.fromRGB(180, 180, 180)
_G.ElementThemeColor = Color3.fromRGB(255, 0, 0)
--end
local DinoWindow = Dino:CreateWindow("BountyFarm",NameofHub2)
local DinoPage = DinoWindow:NewPage("Main")
local DinoElement = DinoPage:NewSection("Main")

players = {}

for i, v in pairs(game.Players:GetChildren()) do
    table.insert(players, v.Name)
end


local DinoDropdown1 = DinoElement:CreateDropdown("Select Player", "rbxassetid://7831282709", players, function(list)
     _G.PLAYERSELECT = list
     wait(5)
     _G.PLAYERSELECT = get()+1
end)

DinoElement:CreateButton("Refresh Player", "rbxassetid://7839505809", function()
    players = {}
    for i, v in pairs(game.Players:GetChildren()) do
        table.insert(players, v.Name)
        DinoDropdown1:RefreshDropdown(players)
    end
    end)

local gunl = {}

for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    table.insert(gunl, v.Name)
end

local DinoDropdown2 = DinoElement:CreateDropdown("Select Gun", "rbxassetid://7831282709", gunl, function(list2)
     _G.GUNSELECT = list2
end)
if _G.GUNSELECT == nil then
    _G.GUNSELECT = "Kabucha"
end

DinoElement:CreateButton("Refresh Gun", "rbxassetid://7839505809", function()
local gunl = {}
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    table.insert(gunl, v.Name)
    DinoDropdown2:RefreshDropdown(gunl)
end
end)
DinoElement:CreateButton("Tween", "rbxassetid://7839505809", function()
    function TP(P1,P2)
    local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 1000 then
        Speed = 50
    elseif Distance >= 1000 then
        Speed = 250
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P2}
    ):Play()
    wait(Distance/Speed)
end

TP(game.Players[_G.PLAYERSELECT].Character.HumanoidRootPart.Position, game.Players[_G.PLAYERSELECT].Character.HumanoidRootPart.CFrame)
end)
DinoElement:CreateButton("GodMode And Bypass", "rbxassetid://7839505809", function()
local p=game.Players.LocalPlayer;
local oldcframe;
local holdingfoil=false;
p.Character.Humanoid:SetStateEnabled(15,false);
p.Character.Humanoid:SetStateEnabled(16,false);
p.CharacterRemoving:Connect(function()
    if (p.Character) then
        local t=p.Character:FindFirstChild("Torso")
        if (t ~= nil) then oldcframe=t.CFrame end
        if (p.Character:findFirstChild("Foil")) then holdingfoil=true end
    end
end)
p.CharacterAdded:Connect(function()
    while p.Character==nil do wait() end
    while p.Character.Parent==nil do wait() end
    local h=p.Character:WaitForChild("Humanoid")
    local rp=p.Character:WaitForChild("HumanoidRootPart")
    if (h ~= nil and rp ~= nil) then
        h:SetStateEnabled(15,false);
        h:SetStateEnabled(16,false);
        for i=1,10 do
            rp.CFrame=oldcframe;
        end
        if (holdingfoil) then
            holdingfoil=false
            local foil=p.Backpack:FindFirstChild("Foil")
            if (foil ~= nil) then
                foil.Parent=p.Character
            end
        end
    end
end)
wait(0.8)
game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
end
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth 
game.Players.LocalPlayer.Character.Shirt:Destroy()
game.Players.LocalPlayer.Character.Pants:Destroy()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
game.Players.LocalPlayer.Character.Animate.Disabled = true
for i,go in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if go.ClassName == "Accessory" then
        go:Destroy()
    end
end
end)
DinoElement:CreateToggle("Spectate Player", "rbxassetid://7839505809", function(value)
    Sp = value
        local plr1 = game.Players.LocalPlayer.Character.Humanoid
        local plr2 = game.Players:FindFirstChild(_G.PLAYERSELECT)
        repeat
            wait(.1)
            game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
        until Sp == false
        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)
DinoElement:CreateToggle("AimbotGun", "rbxassetid://7839505809", function(value)
    if _G.PLAYERSELEC == "" and value then
        else
            AimbotLock = value
        end
end)
local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()
mouse.Button1Down:Connect(
    function()
        if AimbotLock and game.Players.LocalPlayer.Character:FindFirstChild(_G.GUNSELECT) then
            local args = {
                [1] = game:GetService("Players"):FindFirstChild(_G.PLAYERSELECT).Character.HumanoidRootPart.Position,
                [2] = game:GetService("Players"):FindFirstChild(_G.PLAYERSELECT).Character.HumanoidRootPart
            }
            game:GetService("Players").LocalPlayer.Character[_G.GUNSELECT].RemoteFunctionShoot:InvokeServer(
                unpack(args)
            )
        end
    end
)
DinoElement:CreateToggle("AutoShoot", "rbxassetid://7839505809", function(value)
        _G.Shoot = value
if _G.Shoot == true then
while _G.Shoot do wait()
game:GetService("Players").LocalPlayer.Character[_G.GUNSELECT].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(_G.PLAYERSELECT).Character.Head.Position,game:GetService("Players"):FindFirstChild(_G.PLAYERSELECT).Character.Head)
end
end
end)

function GodmodeOn()
    local p=game.Players.LocalPlayer;
local oldcframe;
local holdingfoil=false;
p.Character.Humanoid:SetStateEnabled(15,false);
p.Character.Humanoid:SetStateEnabled(16,false);
p.CharacterRemoving:Connect(function()
    if (p.Character) then
        local t=p.Character:FindFirstChild("Torso")
        if (t ~= nil) then oldcframe=t.CFrame end
        if (p.Character:findFirstChild("Foil")) then holdingfoil=true end
    end
end)
p.CharacterAdded:Connect(function()
    while p.Character==nil do wait() end
    while p.Character.Parent==nil do wait() end
    local h=p.Character:WaitForChild("Humanoid")
    local rp=p.Character:WaitForChild("HumanoidRootPart")
    if (h ~= nil and rp ~= nil) then
        h:SetStateEnabled(15,false);
        h:SetStateEnabled(16,false);
        for i=1,10 do
            rp.CFrame=oldcframe;
        end
        if (holdingfoil) then
            holdingfoil=false
            local foil=p.Backpack:FindFirstChild("Foil")
            if (foil ~= nil) then
                foil.Parent=p.Character
            end
        end
    end
end)
wait(0.8)
game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
end
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth 
end

DinoElement:CreateToggle("Kill [Gun]", "rbxassetid://7839505809", function(value)
    _G.LocakHead = value
    _G.KillGun = value
    if _G.KillGun == true then
    while _G.KillGun do wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_G.GUNSELECT))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PLAYERSELECT].Character.HumanoidRootPart.CFrame * CFrame.new(0,45,0)
if syn then
setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
else
    game.Workspace.Gravity = 0
end
if game.Players[_G.PLAYERSELECT].Character.Humanoid.Health == 0 then
for i, v in pairs(game.Players:GetChildren()) do
    _G.PLAYERSELECT = v.Name
end
end
    end
end
    game.Players[_G.PLAYERSELECT].Character.HumanoidRootPart.Size = Vector3.new(10,10,10)
    game.Players[_G.PLAYERSELECT].Character.HumanoidRootPart.Transparency = 0.50
end)
spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.LocakHead then
							pcall(function()
								pcall(function()
									game:GetService("Players").LocalPlayer.Character[_G.GUNSELECT].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(_G.PLAYERSELECT).Character.HumanoidRootPart.Position,game:GetService("Players"):FindFirstChild(_G.PLAYERSELECT).Character.HumanoidRootPart)	
								end)  
							end)
						end
					end)
end)
for i, v in pairs(game.Players:GetChildren()) do
local nowpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
_G.PLAYERSELECT = v.Name
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PLAYERSELECT].Character.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = nowpos
end
DinoElement:CreateToggle("FixGodModeBug", "rbxassetid://7839505809", function(vu)
    _G.FixGod = vu
    if _G.FixGod == true then
    while _G.FixGod do wait()
        game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
    end
    end
end)
DinoElement:CreateButton("NextPlayer", "rbxassetid://7839505809", function(value)
    game.Players[_G.PLAYERSELECT].Character.Humanoid.Health = 0
    wait(0.5)
    game.Players[_G.PLAYERSELECT].Character.Humanoid.Health = die
    wait(0.5)
       _G.KillGun = false
       _G.KillGun = true 
end)
DinoElement:CreateButton("Hop", "rbxassetid://7839505809", function(value)
local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        local File =
            pcall(
            function()
                AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
            end
        )
        if not File then
            table.insert(AllIDs, actualHour)
            writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
        end
        function TPReturner()
            local Site
            if foundAnything == "" then
                Site =
                    game.HttpService:JSONDecode(
                    game:HttpGet(
                        "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
                    )
                )
            else
                Site =
                    game.HttpService:JSONDecode(
                    game:HttpGet(
                        "https://games.roblox.com/v1/games/" ..
                            PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
                    )
                )
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0
            for i, v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _, Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile =
                                    pcall(
                                    function()
                                        delfile("NotSameServers.json")
                                        AllIDs = {}
                                        table.insert(AllIDs, actualHour)
                                    end
                                )
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(
                            function()
                                writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
                                wait()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(
                                    PlaceID,
                                    ID,
                                    game.Players.LocalPlayer
                                )
                            end
                        )
                        wait(4)
                    end
                end
            end
        end

        function Teleport()
            while wait() do
                pcall(
                    function()
                        TPReturner()
                        if foundAnything ~= "" then
                            TPReturner()
                        end
                    end
                )
            end
        end

        Teleport()
end)

local DinoPage = DinoWindow:NewPage("???")
local page = DinoPage:NewSection("???")
page:CreateLabel("----------------------------")
page:CreateLabel("วิธีใช้")
page:CreateLabel("[1] กดใช้Godmode and Bypass")
page:CreateLabel("[2] รอให้มอนตี")
page:CreateLabel("[3] ถ้าเลือดไม่เด้งไปที่100")
page:CreateLabel("[4] ให้กดใหม่")
page:CreateLabel("[5] เลือกคนเลือกปืนเปิดkill")
page:CreateLabel("----------------------------")
return Dino
end

function loadsc()

warn("Anti AFK : Work")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
function totarget(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/290, Enum.EasingStyle.Linear)
        local tween, err = pcall(function()
            tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
            tween:Play()
        end)
        if not tween then return err end
end
local vu2 = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu2:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu2:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
_G.SchemeColor = Color3.fromRGB(100, 175, 255)
_G.Background = Color3.fromRGB(61, 61, 61)
_G.Header = Color3.fromRGB(41,41, 41)
_G.TextColor = Color3.fromRGB(255,255,255)
local library = {
	themes = {
        original = {
            SchemeColor = _G.SchemeColor,
            Background = _G.Background,
            Header = _G.Header ,
            TextColor = _G.TextColor
        }
    }
}
local chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
local length = 20
local randomString = ''
math.randomseed(os.time())
local charTable = {}
for c in chars:gmatch"." do
    table.insert(charTable, c)
end
for i = 1, length do
    randomString = randomString .. charTable[math.random(1, #charTable)]
end
for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
	if v.ClassName == "ScreenGui" then
		for i1,v1 in pairs(v:GetChildren()) do
			if v1.Name == "Main" then
				for i2,v2 in pairs(v1:GetChildren()) do
					do
						local ui = v
						if ui then
                            ui:Destroy()
                        end
                    end
                end
            end
        end
    end
end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		object.Position = pos
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
					input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end
local function RippleEffect(object)
    spawn(function()
        local Ripple = Instance.new("ImageLabel")

        Ripple.Name = "Ripple"
        Ripple.Parent = object
        Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Ripple.BackgroundTransparency = 1.000
        Ripple.ZIndex = 8
        Ripple.Image = "rbxassetid://2708891598"
        Ripple.ImageTransparency = 0.800
        Ripple.ScaleType = Enum.ScaleType.Fit

        Ripple.Position = UDim2.new((Mouse.X - Ripple.AbsolutePosition.X) / object.AbsoluteSize.X, 0, (Mouse.Y - Ripple.AbsolutePosition.Y) / object.AbsoluteSize.Y, 0)
        TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)}):Play()

        wait(0.5)
        TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()

        wait(1)
        Ripple:Destroy()
    end)
end

local Ui = Instance.new("ScreenGui")
Ui.Name = randomString
Ui.Parent = game.CoreGui
Ui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UserInputService.InputBegan:Connect(function(io, p)
    if io.KeyCode == Enum.KeyCode.RightControl then
        if uitoggled == false then
            Ui.Enabled = false
            uitoggled = true
        else
            Ui.Enabled = true
            uitoggled = false
        end
    end
end)
if syn then
	syn.protect_gui(Ui)
end

function library:CreateWindow(title,theme,closebind)
    local tabs = {}
    local s = false
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local MainFrame = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local SectionBack = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local search = Instance.new("ImageButton")
    local SearchBox = Instance.new("TextBox")
    local UICorner_25 = Instance.new("UICorner")

    Main.Name = "Main"
    Main.Parent = Ui
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = theme.Header
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0, 900, 0, 500)
    Main.Size = UDim2.new(0, 556, 0, 366)
    Main.ZIndex = 3

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Main

    Title.Name = "Title"
    Title.Parent = Main
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 13, 0, 0)
    Title.Size = UDim2.new(0, 556, 0, 19)
    Title.ZIndex = 7
    Title.Font = Enum.Font.SourceSansBold
    Title.Text = title
    Title.TextColor3 = theme.TextColor
    Title.TextSize = 20.000
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Main
    MainFrame.BackgroundColor3 = theme.Background
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0, 0, 0, 19)
    MainFrame.Size = UDim2.new(0, 556, 0, 346)
    MainFrame.ZIndex = 3

    UICorner_2.CornerRadius = UDim.new(0, 5)
    UICorner_2.Parent = MainFrame

    SectionBack.Name = "SectionBack"
    SectionBack.Parent = MainFrame
    SectionBack.BackgroundColor3 = theme.Header
    SectionBack.BorderSizePixel = 0
    SectionBack.Position = UDim2.new(0, 6, 0, 35)
    SectionBack.Size = UDim2.new(0, 544, 0, 304)
    SectionBack.ZIndex = 5

    UICorner_3.CornerRadius = UDim.new(0, 3)
    UICorner_3.Parent = SectionBack
    MakeDraggable(Title,Main)
    search.Name = "search"
    search.Parent = Main
    search.BackgroundColor3 = Color3.fromRGB(198, 197, 200)
    search.BackgroundTransparency = 1.000
    search.LayoutOrder = 1
    search.Position = UDim2.new(0, 530, 0, 0)
    search.Size = UDim2.new(0, 18, 0, 19)
    search.ZIndex = 9
    search.Image = "rbxassetid://3926305904"
    search.ImageRectOffset = Vector2.new(964, 324)
    search.ImageRectSize = Vector2.new(36, 36)

    SearchBox.Name = "SearchBox"
    SearchBox.Parent = Main
    SearchBox.BackgroundColor3 = theme.Background
    SearchBox.Position = UDim2.new(0.825999975, 50, 0, 2)
    SearchBox.Size = UDim2.new(0, 0, 0, 15)
    SearchBox.ZIndex = 10
    SearchBox.BorderSizePixel = 0
    SearchBox.Font = Enum.Font.SourceSans
    SearchBox.PlaceholderColor3 = Color3.fromRGB(239, 239, 239)
    SearchBox.Text = ""
    SearchBox.TextColor3 = theme.TextColor
    SearchBox.TextSize = 14.000
    SearchBox.Visible = true
    local SearchBoxTog = false

    search.MouseButton1Click:Connect(function()
        SearchBoxTog = not SearchBoxTog
        TweenService:Create(SearchBox,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = SearchBoxTog and UDim2.new(0, 71, 0, 15) or UDim2.new(0, 0, 0, 15)}):Play()
        TweenService:Create(SearchBox,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Position = SearchBoxTog and UDim2.new(0.825999975, 0, 0, 2) or UDim2.new(0.825999975, 50, 0, 2)}):Play()
    end)

    UICorner_25.Parent = SearchBox

    local TapBar = Instance.new("ScrollingFrame")
    local UICorner_16 = Instance.new("UICorner")
    local UIListLayout_3 = Instance.new("UIListLayout")

    TapBar.Name = "TapBar"
    TapBar.Parent = Main
    TapBar.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    TapBar.BorderSizePixel = 0
    TapBar.Position = UDim2.new(0, 6, 0, 28)
    TapBar.Size = UDim2.new(0, 544, 0, 21)
    TapBar.ZIndex = 5
    TapBar.ScrollBarThickness = 2
    TapBar.CanvasSize = UDim2.new(0,0,0,0)

    UICorner_16.CornerRadius = UDim.new(0, 3)
    UICorner_16.Parent = TapBar

    UIListLayout_3.Parent = TapBar
    UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    local uitoggled = false
    UserInputService.InputBegan:Connect(
        function(io, p)
            if io.KeyCode == bind then
                if uitoggled == false then
                    uitoggled = true
                    wait(.5)
                    Ui.Enabled = false
                else
                    Ui.Enabled = true
                    uitoggled = false
                end
            end
        end
    )
    function library:Notification(title,desc,button)
        for i,v in pairs(MainFrame:GetChildren())do
            if v.Name == "NotiBackFrame" then
                v:Destroy()
            end
        end
        local NotiBackFrame = Instance.new("Frame")
        local Notification = Instance.new("Frame")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Main = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local Main_2 = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local TextButton = Instance.new("TextButton")
        local UICorner_4 = Instance.new("UICorner")
        local Title = Instance.new("TextLabel")
        local UICorner_5 = Instance.new("UICorner")
        local Title_2 = Instance.new("TextLabel")
        local notifications = Instance.new("ImageButton")
        

        NotiBackFrame.Name = "NotiBackFrame"
        NotiBackFrame.Parent = MainFrame
        NotiBackFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        NotiBackFrame.BackgroundTransparency = 1
        NotiBackFrame.Position = UDim2.new(-0.000238045119, 0, -0.0562442914, 0)
        NotiBackFrame.Size = UDim2.new(0, 556, 0, 366)
        NotiBackFrame.Visible = true
        NotiBackFrame.ZIndex = 100
        TweenService:Create(
            NotiBackFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Position = UDim2.new(0, -500, -0.0562442914, 0)}
        ):Play()

        Notification.Name = "Notification"
        Notification.Parent = NotiBackFrame
        Notification.BackgroundColor3 = theme.Header
        Notification.BorderSizePixel = 0
        Notification.Position = UDim2.new(0, 83, 0, 55)
        Notification.Size = UDim2.new(0, 390, 0, 255)
        Notification.ZIndex = 10
        Notification.ClipsDescendants = true

        Frame.Parent = Notification
        Frame.BackgroundColor3 = theme.Background
        Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0, 0, 0, 17)
        Frame.Size = UDim2.new(0, 390, 0, 236)
        Frame.ZIndex = 11
        
        UICorner.CornerRadius = UDim.new(0, 5)
        UICorner.Parent = Frame
        
        Main.Name = "Main"
        Main.Parent = Frame
        Main.BackgroundColor3 = theme.Header
        Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Main.BorderSizePixel = 0
        Main.Position = UDim2.new(0, 8, 0, 7)
        Main.Size = UDim2.new(0, 373, 0, 220)
        Main.ZIndex = 11
        
        UICorner_2.CornerRadius = UDim.new(0, 5)
        UICorner_2.Parent = Main
        
        Main_2.Name = "Main"
        Main_2.Parent = Main
        Main_2.BackgroundColor3 = theme.Background
        Main_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Main_2.BorderSizePixel = 0
        Main_2.Position = UDim2.new(0, 6, 0, 5)
        Main_2.Size = UDim2.new(0, 360, 0, 209)
        Main_2.ZIndex = 11
        
        UICorner_3.CornerRadius = UDim.new(0, 5)
        UICorner_3.Parent = Main_2
        
        TextButton.Parent = Main_2
        TextButton.BackgroundColor3 = theme.Header
        TextButton.Position = UDim2.new(0, 13, 0, 162)
        TextButton.Size = UDim2.new(0, 335, 0, 31)
        TextButton.ZIndex = 11
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.Text = button
        TextButton.TextColor3 = theme.TextColor
        TextButton.TextSize = 20.000
        
        UICorner_4.CornerRadius = UDim.new(0, 5)
        UICorner_4.Parent = TextButton
        TextButton.MouseButton1Click:Connect(function()

            NotiBackFrame:Destroy()

        end)
        Title.Name = "Title"
        Title.Parent = Main_2
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.BorderSizePixel = 0
        Title.Position = UDim2.new(0, 14, 0, 8)
        Title.Size = UDim2.new(0, 335, 0, 113)
        Title.ZIndex = 11
        Title.Font = Enum.Font.SourceSansBold
        Title.Text = desc
        Title.TextColor3 = theme.TextColor
        Title.TextSize = 20.000
        Title.TextXAlignment = Enum.TextXAlignment.Left
        Title.TextYAlignment = Enum.TextYAlignment.Top
        
        UICorner_5.CornerRadius = UDim.new(0, 5)
        UICorner_5.Parent = Notification
        
        Title_2.Name = "Title"
        Title_2.Parent = Notification
        Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title_2.BackgroundTransparency = 1.000
        Title_2.Position = UDim2.new(0, 28, 0, 1)
        Title_2.Size = UDim2.new(0, 191, 0, 19)
        Title_2.ZIndex = 10
        Title_2.Font = Enum.Font.SourceSansBold
        Title_2.Text = title
        Title_2.TextColor3 = theme.TextColor
        Title_2.TextSize = 20.000
        Title_2.TextXAlignment = Enum.TextXAlignment.Left
        
        notifications.Name = "notifications"
        notifications.Parent = Notification
        notifications.BackgroundTransparency = 1.000
        notifications.LayoutOrder = 1
        notifications.Position = UDim2.new(0, 7, 0, 0)
        notifications.Size = UDim2.new(0, 21, 0, 20)
        notifications.ZIndex = 11
        notifications.Image = "rbxassetid://3926305904"
        notifications.ImageRectOffset = Vector2.new(844, 564)
        notifications.ImageRectSize = Vector2.new(36, 36)
    end
    function tabs:CreateTab(title)
		local SectionContent = {}
		local Tab1 = Instance.new("TextButton")
		local UICorner_17 = Instance.new("UICorner")

		Tab1.Name = "Tab"
		Tab1.Parent = TapBar
		Tab1.BackgroundColor3 = theme.Header
		Tab1.Size = UDim2.new(0, 84, 0, 20)
		Tab1.ZIndex = 6
		Tab1.Font = Enum.Font.SourceSansBold
		Tab1.Text = title
		Tab1.TextColor3 = theme.TextColor
		Tab1.TextSize = 18.000
		Tab1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
		Tab1.TextWrapped = true

		UICorner_17.CornerRadius = UDim.new(0, 3)
		UICorner_17.Parent = Tab1

		local ScrollingFrame = Instance.new("ScrollingFrame")
		local Left = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local Right = Instance.new("Frame")
		local UIPadding_2 = Instance.new("UIPadding")

		ScrollingFrame.Parent = SectionBack
		ScrollingFrame.Active = true
		ScrollingFrame.BackgroundColor3 = theme.Header
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.Position = UDim2.new(0, 0, 0.0197368413, 0)
		ScrollingFrame.Size = UDim2.new(0, 542, 0, 298)
		ScrollingFrame.ScrollBarThickness = 0
		ScrollingFrame.Visible = false
		Left.Name = "Left"
		Left.Parent = ScrollingFrame
		Left.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
		Left.BackgroundTransparency = 1.000
		Left.BorderSizePixel = 0
		Left.Position = UDim2.new(0, 7, 0, 5)
		Left.Size = UDim2.new(0, 262, 0, 299)
		Left.ZIndex = 6

		UIListLayout_2.Parent = ScrollingFrame
		UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 10)
		Right.Name = "Right"
		Right.Parent = ScrollingFrame
		Right.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
		Right.BackgroundTransparency = 1.000
		Right.BorderSizePixel = 0
		Right.Position = UDim2.new(0, 7, 0, 5)
		Right.Size = UDim2.new(0, 262, 0, 299)
		Right.ZIndex = 6
        local RightList = Instance.new("UIListLayout")
        local LeftList = Instance.new("UIListLayout")
        LeftList.Parent = Left
        LeftList.SortOrder = Enum.SortOrder.LayoutOrder
        LeftList.Padding = UDim.new(0, 5)
        RightList.Parent = Right
        RightList.SortOrder = Enum.SortOrder.LayoutOrder
        RightList.Padding = UDim.new(0, 5)

		TapBar.CanvasSize = UDim2.new(0,UIListLayout_3.AbsoluteContentSize.X,0,0)

		UIPadding_2.Parent = ScrollingFrame
		UIPadding_2.PaddingLeft = UDim.new(0, 5)
        if s == false then
			s = true
			Tab1.TextColor3 = theme.Header
			ScrollingFrame.Visible = true
            Tab1.BackgroundColor3 = theme.SchemeColor
		end

		local function GetSide(Longest)
			if Longest then
				if LeftList.AbsoluteContentSize.Y > RightList.AbsoluteContentSize.Y then
					return Left
				else
					return Right
				end
			else
				if LeftList.AbsoluteContentSize.Y > RightList.AbsoluteContentSize.Y then
					return Right
				else
					return Left
				end
			end
		end

		LeftList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			if GetSide(true).Name == Left.Name then
				ScrollingFrame.CanvasSize = UDim2.new(0,0,0,LeftList.AbsoluteContentSize.Y + 5)
			else
				ScrollingFrame.CanvasSize = UDim2.new(0,0,0,RightList.AbsoluteContentSize.Y + 5)
			end
		end)
		RightList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			if GetSide(true).Name == Left.Name then
				ScrollingFrame.CanvasSize = UDim2.new(0,0,0,LeftList.AbsoluteContentSize.Y + 5)
			else
				ScrollingFrame.CanvasSize = UDim2.new(0,0,0,RightList.AbsoluteContentSize.Y + 5)
			end
		end)
		Tab1.MouseButton1Click:Connect(function()
			for i, v in next, SectionBack:GetChildren() do
				if v.Name == "ScrollingFrame" then
					v.Visible = false
				end
				ScrollingFrame.Visible = true

			end
			for i, v in next, TapBar:GetChildren() do
				if v.Name == "Tab" then
					TweenService:Create(
						v,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = theme.TextColor}
					):Play()
					TweenService:Create(
						v,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = theme.Header}
					):Play()
					TweenService:Create(
						Tab1,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = theme.Header}
					):Play()
					TweenService:Create(
						Tab1,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = theme.SchemeColor}
					):Play()
				end
			end
        end)



		function SectionContent:CreateSection(title)
			local Content = {}
			local SectionHold = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")
			SectionHold.Name = "SectionHold"
			SectionHold.Parent = GetSide(false)
			SectionHold.BackgroundColor3 = theme.Background
			SectionHold.Position = UDim2.new(0, 1, 0, 0)
			SectionHold.Size = UDim2.new(0, 260, 0, 100)
			SectionHold.ZIndex = 7

			UICorner_4.CornerRadius = UDim.new(0, 5)
			UICorner_4.Parent = SectionHold


			UIListLayout.Parent = SectionHold
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
            UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				SectionHold.Size = UDim2.new(1,0,0,UIListLayout.AbsoluteContentSize.Y + 15)
			end)
			UIPadding.Parent = SectionHold
			UIPadding.PaddingLeft = UDim.new(0, 10)
			local Title_10 = Instance.new("TextLabel")

			Title_10.Name = "Title"
			Title_10.Parent = SectionHold
			Title_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_10.BackgroundTransparency = 1.000
			Title_10.Position = UDim2.new(0.0449448675, 0, -0.00182170793, 0)
			Title_10.Size = UDim2.new(0, 211, 0, 31)
			Title_10.ZIndex = 8
			Title_10.Font = Enum.Font.SourceSansBold
			Title_10.Text = title
			Title_10.TextColor3 = theme.SchemeColor
			Title_10.TextSize = 20.000
			Title_10.TextXAlignment = Enum.TextXAlignment.Left
			
			function Content:CreateLine()
				local Line = Instance.new("Frame")
				local Frame_3 = Instance.new("Frame")
				local UICorner_8 = Instance.new('UICorner')

				Line.Name = "Line"
				Line.Parent = SectionHold
				Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Line.BackgroundTransparency = 1.000
				Line.BorderSizePixel = 0
				Line.Position = UDim2.new(0, 0, 0, 71)
				Line.Size = UDim2.new(0, 224, 0, 10)
				Line.ZIndex = 7

				Frame_3.Parent = Line
				Frame_3.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
				Frame_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
				Frame_3.BorderSizePixel = 0
				Frame_3.Position = UDim2.new(0, 10, 0, 5)
				Frame_3.Size = UDim2.new(0, 215, 0, 5)
				Frame_3.ZIndex = 7
				UICorner_8.CornerRadius = UDim.new(0, 10)
				UICorner_8.Parent = Frame_3
			end

			function Content:CreateLabel(title)
				local LabelFunc = {}
				local Label2 = Instance.new("Frame")
				local Title_4 = Instance.new("TextLabel")
				
				Label2.Name = title
				Label2.Parent = SectionHold
				Label2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label2.BackgroundTransparency = 1.000
				Label2.BorderSizePixel = 0
				Label2.Position = UDim2.new(0, -11, 0, 191)
				Label2.Size = UDim2.new(0, 261, 0, 22)
				Label2.ZIndex = 7
				
				Title_4.Name = "Title"
				Title_4.Parent = Label2
				Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_4.BackgroundTransparency = 1.000
				Title_4.Position = UDim2.new(0, 12, 0, -6)
				Title_4.Size = UDim2.new(0, 211, 0, 31)
				Title_4.ZIndex = 8
				Title_4.Text = title
				Title_4.Font = Enum.Font.SourceSansBold
				Title_4.TextColor3 = theme.TextColor
				Title_4.TextSize = 20.000
				function LabelFunc:Update(text)
					Label2.Name = tostring(text)

					Title_4.Text = tostring(text)
				end
				return LabelFunc
			end
			function Content:CreateLabel2(title)
				local LabelFunc = {}
				local Label1 = Instance.new("Frame")
				local Frame_8 = Instance.new("Frame")
				local UICorner_14 = Instance.new("UICorner")
				local Frame_9 = Instance.new("Frame")
				local UICorner_15 = Instance.new("UICorner")
				local Title_9 = Instance.new("TextLabel")
				
				Label1.Name = title
				Label1.Parent = SectionHold
				Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label1.BackgroundTransparency = 1.000
				Label1.BorderSizePixel = 0
				Label1.Position = UDim2.new(0, 0, 0, 30)
				Label1.Size = UDim2.new(0, 260, 0, 22)
				Label1.ZIndex = 7
				
				Frame_8.Parent = Label1
				Frame_8.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
				Frame_8.BorderColor3 = Color3.fromRGB(255, 255, 255)
				Frame_8.BorderSizePixel = 0
				Frame_8.Position = UDim2.new(0, 24, 0, 7)
				Frame_8.Size = UDim2.new(0, 62, 0, 4)
				Frame_8.ZIndex = 7
				
				UICorner_14.CornerRadius = UDim.new(0, 10)
				UICorner_14.Parent = Frame_8
				
				Frame_9.Parent = Label1
				Frame_9.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
				Frame_9.BorderColor3 = Color3.fromRGB(255, 255, 255)
				Frame_9.BorderSizePixel = 0
				Frame_9.Position = UDim2.new(0, 156, 0, 7)
				Frame_9.Size = UDim2.new(0, 62, 0, 4)
				Frame_9.ZIndex = 7
				
				UICorner_15.CornerRadius = UDim.new(0, 10)
				UICorner_15.Parent = Frame_9
				
				Title_9.Name = "Title"
				Title_9.Parent = Label1
				Title_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_9.BackgroundTransparency = 1.000
				Title_9.Position = UDim2.new(0, 14, 0, -7)
				Title_9.Size = UDim2.new(0, 211, 0, 31)
				Title_9.ZIndex = 8
				Title_9.Text = title
				Title_9.Font = Enum.Font.SourceSansBold
				Title_9.TextColor3 = theme.TextColor
				Title_9.TextSize = 20.000
				function LabelFunc:Update(text)
					Label1.Name = tostring(text)
					Title_4.Text = tostring(text)
				end
				return LabelFunc
			end
			local focused = false
			SearchBox.Focused:Connect(function()
			
			end)
			SearchBox.FocusLost:Connect(function()
			
			end)

			function UpdateInputOfSearchText()
				local InputText = string.upper(SearchBox.Text)
				for _,button in pairs(SectionHold:GetChildren())do
					if button:IsA("Frame") then
								if InputText == "" or string.find(string.upper(button.Name),InputText) ~= nil then
									button.Visible = true
								else
									button.Visible = false
								end
					end
				end
			end

			SearchBox.Changed:Connect(UpdateInputOfSearchText)
			function Content:CreateButton(title,callback)
				local Button = Instance.new("Frame")
				local TextButton = Instance.new("TextButton")
				local UICorner_5 = Instance.new("UICorner")
				local touch_app = Instance.new("ImageButton")

				Button.Name = title
				Button.Parent = SectionHold
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.BorderSizePixel = 0
                Button.ClipsDescendants = true
				Button.Position = UDim2.new(0, 0, 0, 87)
				Button.Size = UDim2.new(0, 240, 0, 34)
				Button.ZIndex = 8

				TextButton.Parent = Button
				TextButton.BackgroundColor3 = theme.Header
				TextButton.BorderSizePixel = 0
				TextButton.Position = UDim2.new(0, 12, 0, 5)
				TextButton.Size = UDim2.new(0, 212, 0, 26)
				TextButton.ZIndex = 7
				TextButton.Font = Enum.Font.SourceSansBold
				TextButton.TextColor3 = theme.TextColor
				TextButton.TextSize = 20.000
                TextButton.Text = title
				UICorner_5.CornerRadius = UDim.new(0, 5)
				UICorner_5.Parent = TextButton

				touch_app.Name = "touch_app"
				touch_app.Parent = Button
				touch_app.BackgroundTransparency = 1.000
				touch_app.LayoutOrder = 9
				touch_app.Position = UDim2.new(0, 197, 0, 5)
				touch_app.Size = UDim2.new(0, 26, 0, 22)
				touch_app.ZIndex = 11

				touch_app.Image = "rbxassetid://3926305904"
				touch_app.ImageRectOffset = Vector2.new(84, 204)
				touch_app.ImageRectSize = Vector2.new(36, 36)

				TextButton.MouseButton1Down:Connect(function()
					RippleEffect(Button)               
					pcall(callback)
				end)
			end
			function Content:CreateToggle(title,default,callback)
				local Toggled = false
				local ToggleFunc = {}
				local Toggle = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local ToggleBack = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")
				local ImageLabel = Instance.new("ImageLabel")
				local UICorner_2 = Instance.new("UICorner")

				Toggle.Name = title
				Toggle.Parent = SectionHold
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1.000
				Toggle.BorderSizePixel = 0
				Toggle.Position = UDim2.new(0, 0, 0, 187)
				Toggle.Size = UDim2.new(0, 231, 0, 30)
				Toggle.ZIndex = 7

				Title.Name = "Title"
				Title.Parent = Toggle
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0, 43, 0, 6)
				Title.Size = UDim2.new(0, 168, 0, 22)
				Title.ZIndex = 8
				Title.Font = Enum.Font.SourceSansBold
				Title.Text = title
				Title.TextColor3 = theme.TextColor
				Title.TextSize = 20.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				ToggleBack.Name = "ToggleBack"
				ToggleBack.Parent = Toggle
				ToggleBack.BackgroundColor3 = theme.Header
				ToggleBack.Position = UDim2.new(0.0173160173, 0, 0.0666666701, 0)
				ToggleBack.Size = UDim2.new(0, 26, 0, 26)
				ToggleBack.ZIndex = 11
                ToggleBack.ClipsDescendants = true
				ToggleBack.Font = Enum.Font.SourceSans
				ToggleBack.Text = ""
				ToggleBack.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleBack.TextSize = 14.000

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = ToggleBack
				function ToggleFunc:Update(state)
					if state then
						Toggled = state
						TweenService:Create(
							ImageLabel,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 = Toggled and theme.SchemeColor or theme.Header}
						):Play()
						pcall(callback,Toggled)
					else
						Toggled = state
						TweenService:Create(
							ImageLabel,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 = Toggled and theme.SchemeColor or theme.Header}
						):Play()
						pcall(callback,Toggled)
					end
				end
				
				ToggleBack.MouseButton1Down:Connect(function()
					Toggled = not Toggled
					TweenService:Create(
						ImageLabel,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Toggled and theme.SchemeColor or theme.Header}
					):Play()
					RippleEffect(ToggleBack)               

					pcall(callback,Toggled)
				end)
				ImageLabel.Parent = ToggleBack
				ImageLabel.BackgroundColor3 = theme.Header
				ImageLabel.Position = UDim2.new(0, 1, 0, 1)
				ImageLabel.Size = UDim2.new(0, 24, 0, 24)
				ImageLabel.ZIndex = 11
				ImageLabel.Image = "rbxassetid://3926305904"
				ImageLabel.ImageColor3 = Color3.fromRGB(41, 41, 41)
				ImageLabel.ImageRectOffset = Vector2.new(312, 4)
				ImageLabel.ImageRectSize = Vector2.new(24, 24)

				UICorner_2.CornerRadius = UDim.new(0, 5)
				UICorner_2.Parent = ImageLabel

				if default then
					Toggled = default
					TweenService:Create(
						ImageLabel,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Toggled and theme.SchemeColor or theme.Header}
					):Play()
					pcall(callback,Toggled)
				end
				return ToggleFunc
			end
			function Content:CreateKeybind(title,ori,callback)
				local Keybind = Instance.new("Frame")
				local Title_4 = Instance.new("TextLabel")
				local TextButton2323 = Instance.new("TextButton")
				local UICorner_5 = Instance.new("UICorner")
				Keybind.Name = title
				Keybind.Parent = SectionHold
				Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Keybind.BackgroundTransparency = 1.000
				Keybind.BorderSizePixel = 0
				Keybind.Position = UDim2.new(0, 0, 0, 223)
				Keybind.Size = UDim2.new(0, 231, 0, 30)
				Keybind.ZIndex = 7

				Title_4.Name = "Title"
				Title_4.Parent = Keybind
				Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_4.BackgroundTransparency = 1.000
				Title_4.BorderSizePixel = 0
				Title_4.Position = UDim2.new(0, 10, 0, 4)
				Title_4.Size = UDim2.new(0, 98, 0, 22)
				Title_4.ZIndex = 8
				Title_4.Font = Enum.Font.SourceSansBold
				Title_4.Text = title
				Title_4.TextColor3 = theme.TextColor
				Title_4.TextSize = 18.000
				Title_4.TextXAlignment = Enum.TextXAlignment.Left

				TextButton2323.Parent = Keybind
				TextButton2323.BackgroundColor3 = theme.Header
				TextButton2323.Position = UDim2.new(0.744588733, 0, 0.13333334, 0)
				TextButton2323.Size = UDim2.new(0, 65, 0, 24)
				TextButton2323.ZIndex = 11
				TextButton2323.Font = Enum.Font.SourceSansBold
				TextButton2323.TextColor3 = theme.TextColor
				TextButton2323.TextSize = 15.000
				TextButton2323.Text = ori.Name or ""
				UICorner_5.CornerRadius = UDim.new(0, 5)
				UICorner_5.Parent = TextButton2323
				TextButton2323.MouseButton1Click:Connect(function()
                    
                TextButton2323.Text = "..."
                    local inputwait = UserInputService.InputBegan:wait()
                    if inputwait.KeyCode.Name ~= "Unknown" then
                        TextButton2323.Text = inputwait.KeyCode.Name
                        Key = inputwait.KeyCode.Name
                    end
                end)
                    
                UserInputService.InputBegan:connect(
                function(current, pressed)
                    if not pressed then
                        if current.KeyCode.Name == Key then
                            pcall(callback)
                        end
                    end
                end)
			end
			function Content:CreateSlider(title,min,max,default,callback)
				local SliderFunc = {}
				local Slider = Instance.new("Frame")
				local Title_2 = Instance.new("TextLabel")
				local Frame = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local Title_3 = Instance.new("TextLabel")
				local add = Instance.new("ImageButton")
				local remove = Instance.new("ImageButton")
				local SliderFrame = Instance.new("TextButton")
				local UICorner_3 = Instance.new("UICorner")
				local Sliderin = Instance.new("TextButton")
				local UICorner_4 = Instance.new("UICorner")
				Slider.Name = title
				Slider.Parent = SectionHold
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slider.BackgroundTransparency = 1.000
				Slider.BorderSizePixel = 0
				Slider.Position = UDim2.new(0, 0, 0, 61)
				Slider.Size = UDim2.new(0, 231, 0, 39)
				Slider.ZIndex = 7
				
				Title_2.Name = "Title"
				Title_2.Parent = Slider
				Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_2.BackgroundTransparency = 1.000
				Title_2.Position = UDim2.new(0.0519480482, 0, 0.128205135, 0)
				Title_2.Size = UDim2.new(0, 143, 0, 23)
				Title_2.ZIndex = 8
				Title_2.Font = Enum.Font.SourceSansBold
				Title_2.Text = title
				Title_2.TextColor3 = theme.TextColor
				Title_2.TextSize = 20.000
				Title_2.TextXAlignment = Enum.TextXAlignment.Left
				
				Frame.Parent = Slider
				Frame.BackgroundColor3 = theme.Header
				Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Frame.BorderSizePixel = 0
				Frame.Position = UDim2.new(0, 181, 0, 5)
				Frame.Size = UDim2.new(0, 30, 0, 19)
				Frame.ZIndex = 9
				
				UICorner_2.CornerRadius = UDim.new(0, 5)
				UICorner_2.Parent = Frame
				
				Title_3.Name = "Title"
				Title_3.Parent = Frame
				Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_3.BackgroundTransparency = 1.000
				Title_3.BorderSizePixel = 0
				Title_3.Size = UDim2.new(0, 29, 0, 19)
				Title_3.ZIndex = 10
				Title_3.Font = Enum.Font.SourceSansBold
				Title_3.Text = "30"
				Title_3.TextColor3 = theme.TextColor
				Title_3.TextSize = 15.000
				
				add.Name = "add"
				add.Parent = Slider
				add.BackgroundTransparency = 1.000
				add.LayoutOrder = 3
				add.Position = UDim2.new(0, 210, 0, 4)
				add.Size = UDim2.new(0, 21, 0, 21)
				add.ZIndex = 9
                add.ClipsDescendants = true
				add.Image = "rbxassetid://3926307971"
				add.ImageRectOffset = Vector2.new(324, 364)
				add.ImageRectSize = Vector2.new(36, 36)
				
				remove.Name = "remove"
				remove.Parent = Slider
				remove.BackgroundTransparency = 1.000
				remove.LayoutOrder = 6
				remove.Position = UDim2.new(0, 156, 0, 4)
				remove.Size = UDim2.new(0, 21, 0, 21)
				remove.ZIndex = 9
                remove.ClipsDescendants = true
				remove.Image = "rbxassetid://3926307971"
				remove.ImageRectOffset = Vector2.new(884, 284)
				remove.ImageRectSize = Vector2.new(36, 36)
				
				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = Slider
				SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderFrame.Position = UDim2.new(0.012987013, 0, 0.717948735, 0)
				SliderFrame.Size = UDim2.new(0, 225, 0, 6)
				SliderFrame.ZIndex = 11
				SliderFrame.Font = Enum.Font.SourceSans
				SliderFrame.Text = ""
				SliderFrame.TextColor3 = Color3.fromRGB(0, 0, 0)
				SliderFrame.TextSize = 14.000
				
				UICorner_3.CornerRadius = UDim.new(0, 5)
				UICorner_3.Parent = SliderFrame
				
				Sliderin.Name = "Sliderin"
				Sliderin.Parent = SliderFrame
				Sliderin.BackgroundColor3 = theme.SchemeColor
				Sliderin.Size = UDim2.new(0, 125, 0, 6)
				Sliderin.ZIndex = 11
				Sliderin.Font = Enum.Font.SourceSans
				Sliderin.Text = ""
				Sliderin.TextColor3 = Color3.fromRGB(0, 0, 0)
				Sliderin.TextSize = 14.000
				
				UICorner_4.CornerRadius = UDim.new(0, 5)
				UICorner_4.Parent = Sliderin

				local mouse = game:GetService("Players").LocalPlayer:GetMouse();  

                local Value = default
                SliderFrame.MouseButton1Down:Connect(function()
                    if not focusing then
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 225) * Sliderin.AbsoluteSize.X) + tonumber(min)) or 0
                        pcall(function()
                            callback(Value)
                        end)
                        Sliderin:TweenSize(UDim2.new(0, math.clamp(mouse.X - Sliderin.AbsolutePosition.X, 0, 225), 0, 6), "InOut", "Linear", 0.01, true)
                        moveconnection = mouse.Move:Connect(function()
                            Value = math.floor((((tonumber(max) - tonumber(min)) / 225) * Sliderin.AbsoluteSize.X) + tonumber(min))
                            Title_3.Text = Value
                            pcall(function()
                                callback(Value)
                            end)
                            Sliderin:TweenSize(UDim2.new(0, math.clamp(mouse.X - Sliderin.AbsolutePosition.X, 0, 225), 0, 6), "InOut", "Linear", 0.01, true)
                        end)
                        releaseconnection = UserInputService.InputEnded:Connect(function(Mouse)
                            if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                Value = math.floor((((tonumber(max) - tonumber(min)) / 225) * Sliderin.AbsoluteSize.X) + tonumber(min))
                                Title_3.Text = Value
    
                                pcall(function()
                                    callback(Value)
                                end)
    
                                Sliderin:TweenSize(UDim2.new(0, math.clamp(mouse.X - Sliderin.AbsolutePosition.X, 0, 225), 0, 6), "InOut", "Linear", 0.01, true)
                                moveconnection:Disconnect()
                                releaseconnection:Disconnect()
                            end
                        end)
                    end
                end)
                Sliderin.MouseButton1Down:Connect(function()
                    if not focusing then
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 225) * Sliderin.AbsoluteSize.X) + tonumber(min)) or 0
                        pcall(function()
                            callback(Value)
                        end)
                        Sliderin:TweenSize(UDim2.new(0, math.clamp(mouse.X - Sliderin.AbsolutePosition.X, 0, 225), 0, 6), "InOut", "Linear", 0.01, true)
                        moveconnection = mouse.Move:Connect(function()
                            Value = math.floor((((tonumber(max) - tonumber(min)) / 225) * Sliderin.AbsoluteSize.X) + tonumber(min))
                            Title_3.Text = Value
                            pcall(function()
                                callback(Value)
                            end)
                            Sliderin:TweenSize(UDim2.new(0, math.clamp(mouse.X - Sliderin.AbsolutePosition.X, 0, 225), 0, 6), "InOut", "Linear", 0.01, true)
                        end)
                        releaseconnection = UserInputService.InputEnded:Connect(function(Mouse)
                            if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                Value = math.floor((((tonumber(max) - tonumber(min)) / 225) * Sliderin.AbsoluteSize.X) + tonumber(min))
                                Title_3.Text = Value
    
                                pcall(function()
                                    callback(Value)
                                end)
    
                                Sliderin:TweenSize(UDim2.new(0, math.clamp(mouse.X - Sliderin.AbsolutePosition.X, 0, 225), 0, 6), "InOut", "Linear", 0.01, true)
                                moveconnection:Disconnect()
                                releaseconnection:Disconnect()
                            end
                        end)
                    end
                end)
				add.MouseButton1Click:Connect(function()
					Value = math.clamp(Value + 1, 1, max)
					Sliderin.Size = UDim2.new(Value / max, 0, 0, 6)
                    Title_3.Text = Value
                    pcall(function()
                        callback(Value)
                    end)
					RippleEffect(add)               

				end)

				remove.MouseButton1Click:Connect(function()
					Value = math.clamp(Value - 1, min, max)
					Sliderin.Size = UDim2.new(Value / max, 0, 0, 6)
                    Title_3.Text = Value
                    pcall(function()
                        callback(Value)
                    end)
					RippleEffect(remove)               

				end)

                if default then
                    Sliderin.Size = UDim2.new((default or 0) / max, 0, 0, 6)
                    Title_3.Text = default
                    pcall(function()
                        callback(default)
                    end)
                end
                function SliderFunc:Update(value)
                    Sliderin.Size = UDim2.new((value or 0) / max, 0, 0, 6)
                    Title_3.Text = value
                    pcall(function()
                        callback(value)
                    end)
            	end
				return SliderFunc
			end
			function Content:CreateTextBox(title,disapper,callback)
				local TextBox = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local TextBox_2 = Instance.new("TextBox")
				local UICorner = Instance.new("UICorner")
				
				TextBox.Name = title
				TextBox.Parent = SectionHold
				TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.BackgroundTransparency = 1.000
				TextBox.BorderSizePixel = 0
				TextBox.Position = UDim2.new(0, 0, 0, 187)
				TextBox.Size = UDim2.new(0, 231, 0, 30)
				TextBox.ZIndex = 7
				
				Title.Name = "Title"
				Title.Parent = TextBox
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.BorderSizePixel = 0
				Title.Position = UDim2.new(0, 20, 0, 5)
				Title.Size = UDim2.new(0, 98, 0, 22)
				Title.ZIndex = 8
				Title.Font = Enum.Font.SourceSansBold
				Title.Text = title
				Title.TextColor3 = theme.TextColor
				Title.TextSize = 20.000
				Title.TextXAlignment = Enum.TextXAlignment.Left
				
				TextBox_2.Parent = TextBox
				TextBox_2.BackgroundColor3 = theme.Header
				TextBox_2.Position = UDim2.new(0.597402573, 0, 0.166666672, 0)
				TextBox_2.Size = UDim2.new(0, 83, 0, 22)
				TextBox_2.ZIndex = 11
				TextBox_2.Font = Enum.Font.SourceSans
				TextBox_2.Text = ""
				TextBox_2.TextColor3 = theme.TextColor
				TextBox_2.TextSize = 14.000
				
				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = TextBox_2 
				TextBox_2.FocusLost:Connect(
                    function(ep)
                        if ep then
                            if #TextBox_2.Text > 0 then
                                pcall(callback, TextBox_2.Text)
                                if disapper then
                                    TextBox_2.Text = ""
                                end
                            end
                        end
                    end
                )
			end
            function Content:CreateDropdown(title,list,callback)
				local DropFunc = {}
				local Droptog = false
				local Dropdown = Instance.new("Frame")
				local Title_5 = Instance.new("TextLabel")
				local Frame_2 = Instance.new("Frame")
				local UICorner_6 = Instance.new("UICorner")
				local TextLabel = Instance.new("TextLabel")
				local expand_more = Instance.new("ImageButton")
				local DropHold = Instance.new("Frame")
				local Droplis = Instance.new("ScrollingFrame")
				local UIListLayout23423423423 = Instance.new("UIListLayout")
				local UIPadding = Instance.new("UIPadding")
				local UICorner_8 = Instance.new("UICorner")
							
				Dropdown.Name = title
				Dropdown.Parent = SectionHold
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 1.000
				Dropdown.BorderSizePixel = 0
				Dropdown.Position = UDim2.new(0, 0, 0, 187)
				Dropdown.Size = UDim2.new(0, 231, 0, 30)
				Dropdown.ZIndex = 7

				Title_5.Name = "Title"
				Title_5.Parent = Dropdown
				Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_5.BackgroundTransparency = 1.000
				Title_5.BorderSizePixel = 0
				Title_5.Position = UDim2.new(0, 20, 0, 5)
				Title_5.Size = UDim2.new(0, 98, 0, 22)
				Title_5.ZIndex = 10
				Title_5.Font = Enum.Font.SourceSansBold
				Title_5.Text = title
				Title_5.TextColor3 = theme.TextColor
				Title_5.TextSize = 18.000
				Title_5.TextXAlignment = Enum.TextXAlignment.Left

				Frame_2.Parent = Dropdown
				Frame_2.BackgroundColor3 = theme.Header
				Frame_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Frame_2.BorderSizePixel = 0
				Frame_2.Position = UDim2.new(0, 12, 0, 1)
				Frame_2.Size = UDim2.new(0, 212, 0, 31)
				Frame_2.ZIndex = 9

				UICorner_6.CornerRadius = UDim.new(0, 5)
				UICorner_6.Parent = Frame_2

				TextLabel.Parent = Frame_2
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
				TextLabel.Size = UDim2.new(0, 59, 0, 24)
				TextLabel.ZIndex = 9
				TextLabel.Font = Enum.Font.SourceSansBold
				TextLabel.Text = ""
				TextLabel.TextColor3 = theme.TextColor
				TextLabel.TextSize = 20.000

				expand_more.Name = "expand_more"
				expand_more.Parent = Frame_2
				expand_more.BackgroundTransparency = 1.000
				expand_more.Position = UDim2.new(0.855562031, 0, 0.0551075041, 0)
				expand_more.Size = UDim2.new(0, 25, 0, 25)
				expand_more.ZIndex = 9
				expand_more.Image = "rbxassetid://3926305904"
				expand_more.ImageRectOffset = Vector2.new(564, 284)
				expand_more.ImageRectSize = Vector2.new(36, 36)
				expand_more.Rotation = 0
				
				DropHold.Name = "DropHold"
				DropHold.Parent = SectionHold
				DropHold.BackgroundColor3 = theme.Header
				DropHold.Position = UDim2.new(0, 0, 0.746887982, 0)
				DropHold.Size = UDim2.new(0, 500, 0, 0)
				DropHold.ZIndex = 10
				DropHold.Visible = false
				DropHold.BackgroundTransparency = 1

				Droplis.Name = "Droplis"
				Droplis.Parent = DropHold
				Droplis.Active = true
				Droplis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Droplis.BackgroundTransparency = 1.000
				Droplis.Size = UDim2.new(0, 231, 0, 112)
				Droplis.ZIndex = 11
				Droplis.ScrollBarThickness = 0
				Droplis.Visible = false
				Droplis.Position = UDim2.new(0, 5, 0, 0)

				UIListLayout23423423423.Parent = Droplis
				UIListLayout23423423423.SortOrder = Enum.SortOrder.LayoutOrder

				UIPadding.Parent = Droplis
				UIPadding.PaddingTop = UDim.new(0, 3)
				
				expand_more.MouseButton1Click:Connect(function()
					Droptog = not Droptog
					DropHold.Visible = Droptog
					Droplis.Visible = Droptog
                    if expand_more.Rotation == 90 then
                        TweenService:Create(
                            expand_more,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                    else
                        TweenService:Create(
                            expand_more,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 90}
                        ):Play()
                    end
					TweenService:Create(
						DropHold,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = Droptog and UDim2.new(0, 500, 0, 80) or UDim2.new(0, 500, 0, 0)}
					):Play()
				end)
	
				UICorner_8.Parent = DropHold

				for i,v in next, list do

					local DrioBy = Instance.new("TextButton")
					local UICorner_7 = Instance.new("UICorner")
					DrioBy.Name = "DrioBy"
					DrioBy.Parent = Droplis
					DrioBy.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
					DrioBy.Size = UDim2.new(0, 224, 0, 26)
					DrioBy.ZIndex = 12
					DrioBy.Text = v 
					DrioBy.Font = Enum.Font.SourceSansBold
					DrioBy.TextColor3 = theme.TextColor
					DrioBy.TextSize = 16.000
	
					UICorner_7.CornerRadius = UDim.new(0, 3)
					UICorner_7.Parent = DrioBy
	
    
                    DrioBy.MouseButton1Click:Connect(function()
                        pcall(callback, v)
                        Title_5.Text = title .. " : ".. v
                        Droptog = not Droptog
						DropHold.Visible = Droptog
						Droplis.Visible = Droptog
                        if expand_more.Rotation == 90 then
                            TweenService:Create(
                                expand_more,
                                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {Rotation = 0}
                            ):Play()
                        end 
						TweenService:Create(
							DropHold,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = Droptog and UDim2.new(0, 500, 0, 80) or UDim2.new(0, 500, 0, 0)}
						):Play()
                    end)
                end

                function DropFunc:Clear()
                    for i, v in next, Droplis:GetChildren() do
                        if v.Name == "DrioBy" then
                            v:Destroy()
                        end
                    end
                    if Droptog == true then
                        Title_5.Text = Title
                    end
                end

                function DropFunc:Add(addtext)
					local DrioBy = Instance.new("TextButton")
					local UICorner_7 = Instance.new("UICorner")
					DrioBy.Name = "DrioBy"
					DrioBy.Parent = Droplis
					DrioBy.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
					DrioBy.Size = UDim2.new(0, 224, 0, 26)
					DrioBy.ZIndex = 12
					DrioBy.Text = addtext 
					DrioBy.Font = Enum.Font.SourceSansBold
					DrioBy.TextColor3 = theme.TextColor
					DrioBy.TextSize = 16.000
	
					UICorner_7.CornerRadius = UDim.new(0, 3)
					UICorner_7.Parent = DrioBy
	
    
                    DrioBy.MouseButton1Click:Connect(function()
                        pcall(callback, addtext)
                        Title_5.Text = title .. " : ".. addtext
                        Droptog = not Droptog
						DropHold.Visible = Droptog
						Droplis.Visible = Droptog
                        if expand_more.Rotation == 90 then
                            TweenService:Create(
                                expand_more,
                                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {Rotation = 0}
                            ):Play()
                        end 
						TweenService:Create(
							DropHold,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = Droptog and UDim2.new(0, 500, 0, 80) or UDim2.new(0, 500, 0, 0)}
						):Play()
                    end)
                end
            return DropFunc
            end
		return Content
	end
	return SectionContent
end
return tabs
end

if _G.Team == "Pirate" then
	for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
		v.Function()
	end
elseif _G.Team == "Marine" then
	for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
		v.Function()
	end
else
	for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
		v.Function()
	end
end
if _G.HideGui then
	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.RightControl, false, game)
end
if _G.RedeemAllCode then
    function UseCode(Text)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
    end
    UseCode("UPD16")
    UseCode("1MLIKES_RESET")
    UseCode("2BILLION")
    UseCode("UPD15")
    UseCode("FUDD10")
    UseCode("BIGNEWS")
    UseCode("THEGREATACE")
    UseCode("SUB2GAMERROBOT_EXP1")
    UseCode("StrawHatMaine")
    UseCode("Sub2OfficialNoobie")
    UseCode("SUB2NOOBMASTER123")
    UseCode("Sub2Daigrock")
    UseCode("Axiore")
    UseCode("TantaiGaming")
    UseCode("STRAWHATMAINE")
end
if _G.FPSBOOST then
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
end



local placeId = game.PlaceId
if placeId == 2753915549 then
	world1 = true
elseif placeId == 4442272183 then
	world2 = true
elseif placeId == 7449423635 then
	world3 = true
end

function cq()
    local MyLevel =  game.Players.LocalPlayer.Data.Level.Value
    if world1 then
		Dis = 300
		if MyLevel == 1 or MyLevel <= 9 then -- Bandit
            magbring = 400
			Ms = "Bandit [Lv. 5]"
			NameQuest = "BanditQuest1"
			LevelQuest = 1
			NameMon = "Bandit"
			CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
			CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
		elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
            magbring = 400
			Ms = "Monkey [Lv. 14]"
			NameQuest = "JungleQuest"
			LevelQuest = 1
			NameMon = "Monkey"
			CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
		elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
            magbring = 240
			Ms = "Gorilla [Lv. 20]"
			NameQuest = "JungleQuest"
			LevelQuest = 2
			NameMon = "Gorilla"
			CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
			Dis = 150
			Ms = "Pirate [Lv. 35]"
			NameQuest = "BuggyQuest1"
			LevelQuest = 1
			NameMon = "Pirate"
			CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
		elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
			Dis = 150
			Ms = "Brute [Lv. 45]"
			NameQuest = "BuggyQuest1"
			LevelQuest = 2
			NameMon = "Brute"
			CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
		elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
			Ms = "Desert Bandit [Lv. 60]"
			NameQuest = "DesertQuest"
			LevelQuest = 1
			NameMon = "Desert Bandit"
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
			CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
		elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
			Ms = "Desert Officer [Lv. 70]"
			NameQuest = "DesertQuest"
			LevelQuest = 2
			NameMon = "Desert Officer"
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
			CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
		elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
			Ms = "Snow Bandit [Lv. 90]"
			NameQuest = "SnowQuest"
			LevelQuest = 1
			NameMon = "Snow Bandits"
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
			CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
		elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
			Ms = "Snowman [Lv. 100]"
			NameQuest = "SnowQuest"
			LevelQuest = 2
			NameMon = "Snowman"
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
			CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
		elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
			Ms = "Chief Petty Officer [Lv. 120]"
			NameQuest = "MarineQuest2"
			LevelQuest = 1
			NameMon = "Chief Petty Officer"
			CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
			CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
		elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
			Ms = "Sky Bandit [Lv. 150]"
			NameQuest = "SkyQuest"
			LevelQuest = 1
			NameMon = "Sky Bandit"
			CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
			CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
		elseif MyLevel == 175 or MyLevel <= 224 then -- Dark Master
			Ms = "Dark Master [Lv. 175]"
			NameQuest = "SkyQuest"
			LevelQuest = 2
			NameMon = "Dark Master"
			CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
			CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
		elseif MyLevel == 225 or MyLevel <= 274 then -- Toga Warrior
			Ms = "Toga Warrior [Lv. 225]"
			NameQuest = "ColosseumQuest"
			LevelQuest = 1
			NameMon = "Toga Warrior"
			CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
			CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
		elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
			Ms = "Gladiator [Lv. 275]"
			NameQuest = "ColosseumQuest"
			LevelQuest = 2
			NameMon = "Gladiato"
			CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
			CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
		elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
			Ms = "Military Soldier [Lv. 300]"
			NameQuest = "MagmaQuest"
			LevelQuest = 1
			NameMon = "Military Soldier"
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
			CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
		elseif MyLevel == 300 or MyLevel <= 374 then -- Military Spy
            FM = false
			Ms = "Military Spy [Lv. 330]"
			NameQuest = "MagmaQuest"
			LevelQuest = 2
			NameMon = "Military Spy"
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
			CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
		elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
            FM = true
			Ms = "Fishman Warrior [Lv. 375]"
			NameQuest = "FishmanQuest"
			LevelQuest = 1
			NameMon = "Fishman Warrior"
			CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
			CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
		elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
            FM = true
			Ms = "Fishman Commando [Lv. 400]"
			NameQuest = "FishmanQuest"
			LevelQuest = 2
			NameMon = "Fishman Commando"
			CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
			CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
		elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
            FM = false
			Ms = "God's Guard [Lv. 450]"
			NameQuest = "SkyExp1Quest"
			LevelQuest = 1
			NameMon = "God's Guards"
			CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
			CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
		elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
            sky = false
			Ms = "Shanda [Lv. 475]"
			NameQuest = "SkyExp1Quest"
			LevelQuest = 2
			NameMon = "Shandas"
			CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
			CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
		elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
            sky = true
			Ms = "Royal Squad [Lv. 525]"
			NameQuest = "SkyExp2Quest"
			LevelQuest = 1
			NameMon = "Royal Squad"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
			CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
		elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
            Dis = 240
            sky = true
			Ms = "Royal Soldier [Lv. 550]"
			NameQuest = "SkyExp2Quest"
			LevelQuest = 2
			NameMon = "Royal Soldier"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
			CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
		elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
            Dis = 240
            sky = false
			Ms = "Galley Pirate [Lv. 625]"
			NameQuest = "FountainQuest"
			LevelQuest = 1
			NameMon = "Galley Pirate"
			CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
			CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
		elseif MyLevel >= 650 then -- Galley Captain
            Dis = 240
			Ms = "Galley Captain [Lv. 650]"
			NameQuest = "FountainQuest"
			LevelQuest = 2
			NameMon = "Galley Captain"
			CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
			CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
		end
    elseif world2 then
		Dis = 240
		if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
			Ms = "Raider [Lv. 700]"
			NameQuest = "Area1Quest"
			LevelQuest = 1
			NameMon = "Raider"
			CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
		elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
			Ms = "Mercenary [Lv. 725]"
			NameQuest = "Area1Quest"
			LevelQuest = 2
			NameMon = "Mercenary"
			CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
		elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
			Ms = "Swan Pirate [Lv. 775]"
			NameQuest = "Area2Quest"
			LevelQuest = 1
			NameMon = "Swan Pirate"
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
		elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
			Ms = "Factory Staff [Lv. 800]"
			NameQuest = "Area2Quest"
			LevelQuest = 2
			NameMon = "Factory Staff"
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
		elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
			Ms = "Marine Lieutenant [Lv. 875]"
			NameQuest = "MarineQuest3"
			LevelQuest = 1
			NameMon = "Marine Lieutenant"
			CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
		elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
			Ms = "Marine Captain [Lv. 900]"
			NameQuest = "MarineQuest3"
			LevelQuest = 2
			NameMon = "Marine Captain"
			CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
		elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
			Ms = "Zombie [Lv. 950]"
			NameQuest = "ZombieQuest"
			LevelQuest = 1
			NameMon = "Zombie"
			CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
			CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
		elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
			Ms = "Vampire [Lv. 975]"
			NameQuest = "ZombieQuest"
			LevelQuest = 2
			NameMon = "Vampire"
			CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
			CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
		elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
			Ms = "Snow Trooper [Lv. 1000]"
			NameQuest = "SnowMountainQuest"
			LevelQuest = 1
			NameMon = "Snow Trooper"
			CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
			CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
		elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
			Ms = "Winter Warrior [Lv. 1050]"
			NameQuest = "SnowMountainQuest"
			LevelQuest = 2
			NameMon = "Winter Warrior"
			CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
			CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
		elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
			Ms = "Lab Subordinate [Lv. 1100]"
			NameQuest = "IceSideQuest"
			LevelQuest = 1
			NameMon = "Lab Subordinate"
			CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
			CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
		elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
			Ms = "Horned Warrior [Lv. 1125]"
			NameQuest = "IceSideQuest"
			LevelQuest = 2
			NameMon = "Horned Warrior"
			CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
			CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
		elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
			Ms = "Magma Ninja [Lv. 1175]"
			NameQuest = "FireSideQuest"
			LevelQuest = 1
			NameMon = "Magma Ninja"
			CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
			CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
		elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
			Ms = "Lava Pirate [Lv. 1200]"
			NameQuest = "FireSideQuest"
			LevelQuest = 2
			NameMon = "Lava Pirate"
			CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
			CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
		elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
			Ms = "Ship Deckhand [Lv. 1250]"
			NameQuest = "ShipQuest1"
			LevelQuest = 1
			NameMon = "Ship Deckhand"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
			CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
		elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
			Ms = "Ship Engineer [Lv. 1275]"
			NameQuest = "ShipQuest1"
			LevelQuest = 2
			NameMon = "Ship Engineer"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
			CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
		elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
			Ms = "Ship Steward [Lv. 1300]"
			NameQuest = "ShipQuest2"
			LevelQuest = 1
			NameMon = "Ship Steward"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
			CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
		elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
			Ms = "Ship Officer [Lv. 1325]"
			NameQuest = "ShipQuest2"
			LevelQuest = 2
			NameMon = "Ship Officer"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
			CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
		elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
			Ms = "Arctic Warrior [Lv. 1350]"
			NameQuest = "FrostQuest"
			LevelQuest = 1
			NameMon = "Arctic Warrior"
			CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
			CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
		elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
			Ms = "Snow Lurker [Lv. 1375]"
			NameQuest = "FrostQuest"
			LevelQuest = 2
			NameMon = "Snow Lurker"
			CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
			CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
		elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
			Ms = "Sea Soldier [Lv. 1425]"
			NameQuest = "ForgottenQuest"
			LevelQuest = 1
			NameMon = "Sea Soldier"
			CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
			CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
		elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
			Ms = "Water Fighter [Lv. 1450]"
			NameQuest = "ForgottenQuest"
			LevelQuest = 2
			NameMon = "Water Fighter"
			CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
			CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
		end
    elseif world3 then
		Dis = 240
		if MyLevel == 1500 or MyLevel <= 1524 then
			Ms = "Pirate Millionaire [Lv. 1500]"
			NameQuest = "PiratePortQuest"
			LevelQuest = 1
			NameMon = "Pirate Millionaire"
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
		elseif MyLevel == 1525 or MyLevel <= 1574 then
			Ms = "Pistol Billionaire [Lv. 1525]"
			NameQuest = "PiratePortQuest"
			LevelQuest = 2
			NameMon = "Pistol Billionaire"
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
		elseif MyLevel == 1575 or MyLevel <= 1599 then
			Ms = "Dragon Crew Warrior [Lv. 1575]"
			NameQuest = "AmazonQuest"
			LevelQuest = 1
			NameMon = "Dragon Crew Warrior"
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
			CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
		elseif MyLevel == 1600 or MyLevel <= 1624 then
			Ms = "Dragon Crew Archer [Lv. 1600]"
			NameQuest = "AmazonQuest"
			LevelQuest = 2
			NameMon = "Dragon Crew Archer"
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
			CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			Ms = "Female Islander [Lv. 1625]"
			NameQuest = "AmazonQuest2"
			LevelQuest = 1
			NameMon = "Female Islander"
			CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
		elseif MyLevel == 1650 or MyLevel <= 1699 then
			Ms = "Giant Islander [Lv. 1650]"
			NameQuest = "AmazonQuest2"
			LevelQuest = 2
			NameMon = "Giant Islander"
			CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			Ms = "Marine Commodore [Lv. 1700]"
			NameQuest = "MarineTreeIsland"
			LevelQuest = 1
			NameMon = "Marine Commodore"
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
		elseif MyLevel == 1725 or MyLevel <= 1774 then
			Ms = "Marine Rear Admiral [Lv. 1725]"
			NameQuest = "MarineTreeIsland"
			LevelQuest = 2
			NameMon = "Marine Rear Admiral"
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
		elseif MyLevel == 1775 or MyLevel <= 1799 then
			Ms = "Fishman Raider [Lv. 1775]"
			NameQuest = "DeepForestIsland3"
			LevelQuest = 1
			NameMon = "Fishman Raider"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
		elseif MyLevel == 1800 or MyLevel <= 1824 then
			Ms = "Fishman Captain [Lv. 1800]"
			NameQuest = "DeepForestIsland3"
			LevelQuest = 2
			NameMon = "Fishman Captain"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
		elseif MyLevel == 1825 or MyLevel <= 1849 then
			Ms = "Forest Pirate [Lv. 1825]"
			NameQuest = "DeepForestIsland"
			LevelQuest = 1
			NameMon = "Forest Pirate"
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			Ms = "Mythological Pirate [Lv. 1850]"
			NameQuest = "DeepForestIsland"
			LevelQuest = 2
			NameMon = "Mythological Pirate"
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			Ms = "Jungle Pirate [Lv. 1900]"
			NameQuest = "DeepForestIsland2"
			LevelQuest = 1
			NameMon = "Jungle Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
		elseif MyLevel == 1925 or MyLevel <= 1974 then
			Ms = "Musketeer Pirate [Lv. 1925]"
			NameQuest = "DeepForestIsland2"
			LevelQuest = 2
			NameMon = "Musketeer Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
			Ms = "Reborn Skeleton [Lv. 1975]"
			NameQuest = "HauntedQuest1"
			LevelQuest = 1
			NameMon = "Reborn Skeleton"
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
			Ms = "Living Zombie [Lv. 2000]"
			NameQuest = "HauntedQuest1"
			LevelQuest = 2
			NameMon = "Living Zombie"
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
		elseif MyLevel == 2025 or MyLevel <= 2049 then
			Ms = "Demonic Soul [Lv. 2025]"
			NameQuest = "HauntedQuest2"
			LevelQuest = 1
			NameMon = "Demonic Soul"
			CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
			CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
		elseif MyLevel == 2050 or MyLevel <= 2074 then
			Ms = "Posessed Mummy [Lv. 2050]" 
			NameQuest = "HauntedQuest2"
			LevelQuest = 2
			NameMon = "Posessed Mummy"
			CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
			CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
		elseif MyLevel == 2075 or MyLevel <= 2099 then
			Ms = "Peanut Scout [Lv. 2075]" 
			NameQuest = "NutsIslandQuest"
			LevelQuest = 1
			NameMon = "Peanut Scout"
			CFrameQuest = CFrame.new(-2103.05786, 38.2287407, -10191.8506, 0.741642892, -1.49368617e-09, 0.670794845, 3.05409564e-09, 1, -1.14992271e-09, -0.670794845, 2.90150326e-09, 0.741642892)
			CFrameMon = CFrame.new(-2141.38232, 47.7477875, -10018.543, -0.968116105, -5.89740452e-08, -0.250501841, -5.97350152e-08, 1, -4.56529126e-09, 0.250501841, 1.05439986e-08, -0.968116105)
		elseif MyLevel == 2100 or MyLevel <= 2124 then
			Ms = "Peanut President [Lv. 2100]" 
			NameQuest = "NutsIslandQuest"
			LevelQuest = 2
			NameMon = "Peanut President"
			CFrameQuest = CFrame.new(-2103.05786, 38.2287407, -10191.8506, 0.741642892, -1.49368617e-09, 0.670794845, 3.05409564e-09, 1, -1.14992271e-09, -0.670794845, 2.90150326e-09, 0.741642892)
			CFrameMon = CFrame.new(-1953.70032, 83.0349197, -10542.2656, 0.951729834, -8.54529603e-09, 0.306937039, 9.71170966e-09, 1, -2.27286967e-09, -0.306937039, 5.14404119e-09, 0.951729834)
		elseif MyLevel == 2125 or MyLevel <= 2149  then
			Ms = "Ice Cream Chef [Lv. 2125]" 
			NameQuest = "IceCreamIslandQuest"
			LevelQuest = 1
			NameMon = "Ice Cream Chef"
			CFrameQuest = CFrame.new(-821.283081, 65.9448776, -10965.6074, 0.785351455, -3.35560451e-08, -0.619050145, -5.61092506e-09, 1, -6.13239379e-08, 0.619050145, 5.1634288e-08, 0.785351455)
			CFrameMon = CFrame.new(-570.911926, 156.211258, -10762.1934, 0.951914608, 4.20899511e-08, 0.306362569, 2.30568364e-08, 1, -2.09027178e-07, -0.306362569, 2.06039772e-07, 0.951914608)
		elseif MyLevel >= 2150 then
			Ms = "Ice Cream Commander [Lv. 2150]"
			NameQuest = "IceCreamIslandQuest"
			LevelQuest = 2
			NameMon = "Ice Cream Commander"
			CFrameQuest = CFrame.new(-821.283081, 65.9448776, -10965.6074, 0.785351455, -3.35560451e-08, -0.619050145, -5.61092506e-09, 1, -6.13239379e-08, 0.619050145, 5.1634288e-08, 0.785351455)
			CFrameMon = CFrame.new(-742.041687, 205.204254, -11379.2129, -0.953330874, -1.21068569e-08, 0.301928073, 5.26685584e-09, 1, 5.67284388e-08, -0.301928073, 5.56711832e-08, -0.953330874)
		end
    end
end
function totarget(CFgo)
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
    local tween, err = pcall(function()
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    end)
    if not tween then return err end
end
function bithop()
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
end

if world1 then
	Rq = 1000
    magbring = 240
elseif world2 then
	Rq = 2000
    magbring = 400
else
	Rq = 3000
    magbring = 400
end

function TPFF(P1)
    Distance = (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 250 then
        Speed = 1000
    elseif Distance < 500 then
        Speed = 400
    elseif Distance < 1000 then
        Speed = 350
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P1}
    ):Play()
end

function TP2FF(P1)
	Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 1000 then
		Speed = 325
	elseif Distance >= 1000 then
		Speed = 325
	end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P1}
    ):Play()
    wait(Distance/Speed)
end

spawn(function()
    while true do game:GetService("RunService").RenderStepped:Wait()
        if Clip or _G.PART or _G.autoraid or _G.AutoFarmBone or _G.AutoFarmBon or _G.AutoHallowScythe or _G.FramBoss or _G.FarmLevel or _G.AutoNew or _G.AutoThird or _G.AutoSwan or _G.AutoSwanHop or _G.AutoPole or _G.AutoPoleHop or _G.AutoHakiRainbow or _G.AutoObservationHakiV2 or _G.AutoEliteHunter or _G.AutoEliteHunterHop or _G.AutoTushitaSword or _G.AutoTushitaSword or  _G.FramBoss or _G.AutoFarmAllBoss or _G.AutoCavender or _G.AutoCavenderHop or _G.Tween then
            if syn and  game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            else
                pcall(function()
                    if not game:GetService("Workspace"):FindFirstChild("LOL") then
                        local LOL = Instance.new("Part")
                        LOL.Name = "LOL"
                        LOL.Parent = game.Workspace
                        LOL.Anchored = true
                        LOL.Transparency = 0
                        LOL.Size = Vector3.new(10,0.5,10)
                        LOL.Material = "Neon"
                        while true do 
                           wait(0.1) 
                           game:GetService('TweenService'):Create(
                            LOL,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                           {Color = Color3.fromRGB(255, 0, 0)}):Play() 
                           wait(.5)
           
                           game:GetService('TweenService'):Create(
                            LOL,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                           {Color = Color3.fromRGB(255, 155, 0)}):Play() 
                           wait(.5)
           
                           game:GetService('TweenService'):Create(
                            LOL,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                           {Color = Color3.fromRGB(255, 255, 0)}):Play() 
                           wait(.5)
           
                           game:GetService('TweenService'):Create(
                            LOL,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                           {Color = Color3.fromRGB(0, 255, 0)}):Play() 
                           wait(.5)
           
                           game:GetService('TweenService'):Create(
                            LOL,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                           {Color = Color3.fromRGB(0, 255, 255)}):Play() 
                           wait(.5)
           
                           game:GetService('TweenService'):Create(
                            LOL,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                           {Color = Color3.fromRGB(0, 155, 255)}):Play() 
                           wait(.5)
           
                           game:GetService('TweenService'):Create(
                            LOL,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                           {Color = Color3.fromRGB(255, 0, 255)}):Play() 
                           wait(.5)
           
                           game:GetService('TweenService'):Create(
                            LOL,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                           {Color = Color3.fromRGB(255, 0, 155)}):Play() 
                           wait(.5)
                       end 
                    elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v.Name == "HumanoidRootPart" or v.Name == "Head" or v.Name == "LeftHand" or v.Name == "RightHand" or v.Name == "LeftLowerArm" or v.Name == "RightLowerArm" or v.Name == "LeftUpperArm" or v.Name == "RightUpperArm" or v.Name == "LeftFoot" or v.Name == "LeftLowerLeg" or v.Name == "UpperTorso" or v.Name == "LeftUpperLeg" or v.Name == "RightFoot" or v.Name == "RightLowerLeg" or v.Name == "LowerTorso" or v.Name == "RightUpperLeg" then
                                v.CanCollide = false
                            end
                        end
                        game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 4,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                end)
            end
        end
    end
end)

spawn(function()
    pcall(function()
        while game:GetService("RunService").Heartbeat:wait() do
            if Clip or _G.AutoFarmtp or _G.AutoFarm or AutoYama or Auto_Bone or _G.AutoFarmObservation or ReadyThirdSea or _G.FramBoss or _G.FarmLevel or Auto_Newworld or AutoRainbow or _G.AutoSwan or AutoRengoku or _G.AutoPole or _G.AutoPoleHop or _G.AutoHakiRainbow or _G.AutoFastAttack or _G.AutoEliteHunter or _G.AutoEliteHunterHop or _G.AutoTushitaSword or _G.AutoTushitaSword or  _G.FramBoss or _G.AutoFarmAllBoss or _G.AutoCavender or _G.AutoCavenderHop or _G.Tween then
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                    if not game:GetService("Workspace"):FindFirstChild("Water") then
                        local Water = Instance.new("Part", game.Workspace)
                        Paertaiteen.Name = "LOL"
             Paertaiteen.Parent = game.Workspace
             Paertaiteen.Anchored = true
             Paertaiteen.Transparency = 0
             Paertaiteen.Size = Vector3.new(10,0.5,10)
             Paertaiteen.Material = "Neon"
			 while true do 
				wait(0.1) 
				game:GetService('TweenService'):Create(
					Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
				{Color = Color3.fromRGB(255, 0, 0)}):Play() 
				wait(.5)

				game:GetService('TweenService'):Create(
					Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
				{Color = Color3.fromRGB(255, 155, 0)}):Play() 
				wait(.5)

				game:GetService('TweenService'):Create(
					Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
				{Color = Color3.fromRGB(255, 255, 0)}):Play() 
				wait(.5)

				game:GetService('TweenService'):Create(
					Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
				{Color = Color3.fromRGB(0, 255, 0)}):Play() 
				wait(.5)

				game:GetService('TweenService'):Create(
					Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
				{Color = Color3.fromRGB(0, 255, 255)}):Play() 
				wait(.5)

				game:GetService('TweenService'):Create(
					Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
				{Color = Color3.fromRGB(0, 155, 255)}):Play() 
				wait(.5)

				game:GetService('TweenService'):Create(
					Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
				{Color = Color3.fromRGB(255, 0, 255)}):Play() 
				wait(.5)

				game:GetService('TweenService'):Create(
					Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
				{Color = Color3.fromRGB(255, 0, 155)}):Play() 
				wait(.5)
			end 
                        game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    else
                        game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y >= 1 and game:GetService("Workspace"):FindFirstChild("Water") then
                    game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                end
            else
                if game:GetService("Workspace"):FindFirstChild("Water") then
                    game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                end
            end
        end
    end)
end)

spawn(function()
    while wait() do
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge, math.huge * math.huge * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0
        end
    end
end)

spawn(function()
    player = game.Players.LocalPlayer
    character = player.Character
    game:GetService("RunService").Stepped:Connect(function()
        kkii = require(game.ReplicatedStorage.Util.CameraShaker)
        kkii:Stop()
        if _G.FarmLevel or _G.Tween or _G.AutoFarmBone then
            for _, v in pairs(character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end)
end)

function EquipWeapon(ToolSe)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
		getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
		wait(.1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end

function toTarget(targetPos, targetCFrame)
    local tweenfunc = {}
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/325, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
    tween:Play()

    function tweenfunc:Stop()
        tween:Cancel()
        return tween
    end

    if not tween then return tween end
    return tweenfunc
end

if _G.SelectToolWeapon == nil then
    _G.SelectToolWeapon = ""
end


local Window = library:CreateWindow(NameofHub,library.themes.original,Enum.KeyCode.RightControl)
local Tab1s = Window:CreateTab('Main')
local Tab1 = Tab1s:CreateSection('Main')
local Tab11 = Tab1s:CreateSection('SelectWeapon')
local Tab2s = Window:CreateTab('AutoStats')
local Tab2 = Tab2s:CreateSection('AutoStats')
local Tab7s = Window:CreateTab('Players')
local Tab7 = Tab7s:CreateSection('Players')
local Tab3s = Window:CreateTab('Teleport')
local Tab3 = Tab3s:CreateSection('Teleport')
local Tab33 = Tab3s:CreateSection('BuyItem')
local Tab6s = Window:CreateTab('DevilFruit')
local dv = Tab6s:CreateSection('DevilFruit')
local Tab5s = Window:CreateTab('Dungeon')
local du = Tab5s:CreateSection('Dungeon')
local Tab4s = Window:CreateTab('Misc')
local mi = Tab4s:CreateSection('Misc')
local Tab44 = Tab4s:CreateSection('Misc')

Tab1:CreateLine()
Tab1:CreateLabel("Autofarm")

_G.FarmLevel = false
_G.FMODE = "Above"
_G.StartMagnetAutoFarm = false

_G.distancefarmmode = 19
Tab1:CreateDropdown("FarmMode",{"Above","Under","Behide"},function(Value)
_G.FMODE = Value
if _G.FMODE == "Above" then
    FMode1 = _G.distancefarmmode
    FMode3 = 0
    print("1")
end
if _G.FMODE == "Under" then
    FMode1 = -_G.distancefarmmode
    FMode3 = 0
    print("2")
end
if _G.FMODE == "Behide" then
    FMode3 = _G.distancefarmmode
    FMode1 = 0
    print("3")
end
end)

spawn(function()
   while wait() do
        Method = CFrame.new(0,FMode1,FMode3)
    end
end)

function TP55(P1,P2)
    local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 1000 then
        Speed = 325
    elseif Distance >= 1000 then
        Speed = 325
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P2}
    ):Play()
    wait(Distance/Speed)
end
Tab1:CreateButton("Bypass TP",function()
local p=game.Players.LocalPlayer;
local oldcframe;
local holdingfoil=false;
p.Character.Humanoid:SetStateEnabled(15,false);
p.Character.Humanoid:SetStateEnabled(16,false);
p.CharacterRemoving:Connect(function()
    if (p.Character) then
        local t=p.Character:FindFirstChild("Torso")
        if (t ~= nil) then oldcframe=t.CFrame end
        if (p.Character:findFirstChild("Foil")) then holdingfoil=true end
    end
end)
p.CharacterAdded:Connect(function()
    while p.Character==nil do wait() end
    while p.Character.Parent==nil do wait() end
    local h=p.Character:WaitForChild("Humanoid")
    local rp=p.Character:WaitForChild("HumanoidRootPart")
    if (h ~= nil and rp ~= nil) then
        h:SetStateEnabled(15,false);
        h:SetStateEnabled(16,false);
        for i=1,10 do
            rp.CFrame=oldcframe;
        end
        if (holdingfoil) then
            holdingfoil=false
            local foil=p.Backpack:FindFirstChild("Foil")
            if (foil ~= nil) then
                foil.Parent=p.Character
            end
        end
    end
end)
wait(0.8)
game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
if game.Players.LocalPlayer.Character.Humanoid.MaxHealth == 100 then
if world1 then
TP55(Vector3.new(5396.1635742188, 105.57376098633, 4007.8935546875),CFrame.new(5396.1635742188, 105.57376098633, 4007.8935546875))
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,0,-4)
end
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
end
end
if world2 or world3 then
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,0,-4)
end
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
end
end)

Tab1:CreateToggle("AutoFarmLevel",nil,function(d)
_G.FarmLevel = d
_G.Gaviteop = d
if _G.Gaviteop == true then
while _G.Gaviteop do wait()
    game.Workspace.Gravity = 0
    game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
end
else
    game.Workspace.Gravity = 196.2
end
if _G.Gaviteop == false then
    game.Workspace.Gravity = 196.2
end
end)

Tab1:CreateToggle("LockMob",nil,function(d)
_G.LockMob = d
if _G.LockMob == true then
while _G.LockMob do wait()
    cq()
    for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
        if x.Name == Ms and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x.Humanoid.Health > 0 and (x.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= magbring then
                    x.HumanoidRootPart.CanCollide = false
                    x.HumanoidRootPart.CFrame = PosMonAutoFarm
                    x.Humanoid.PlatformStand = false
                    x.Humanoid:ChangeState(11)
                    wait(0.1)
                    x.HumanoidRootPart.Anchored = false
        end 
    end
end
end
if _G.LockMob == false then
    cq()
    for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
                if x.Name == Ms and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x.Humanoid.Health > 0 and (x.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= magbring then
                    x.HumanoidRootPart.CanCollide = false
                    x.HumanoidRootPart.CFrame = PosMonAutoFarm
                    x.Humanoid.PlatformStand = false
                    x.Humanoid:ChangeState(11)
                    wait(0.2)
                    x.HumanoidRootPart.Anchored = false
                end 
            end
end
end)
function TP(P1,P2)
    local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 1000 then
        Speed = 350
    elseif Distance >= 1000 then
        Speed = 350
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P2}
    ):Play()
    wait(Distance/Speed)
end
Tab1:CreateToggle("AutoFarmBone",nil,function(vu)
    _G.AutoFarmBone = vu
    _G.MainAutoFarmBone = vu
end)
spawn(function()
    while wait() do
        if _G.AutoFarmBone then
            if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if _G.AutoFarmBone and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        repeat wait()
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                MagnetFarmBone = false
                            elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                if Farmtween then
                                    Farmtween:Stop()
                                end
                                PosFarmBone = v.HumanoidRootPart.CFrame
                                EquipWeapon(_G.SelectToolWeapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,FMode1,FMode3)
                                game:GetService('VirtualUser'):CaptureController()
                                game:GetService('VirtualUser'):Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                                game:GetService('VirtualUser'):Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                                MagnetFarmBone = true
                            end
                        until not _G.AutoFarmBone or not v.Parent or v.Humanoid.Health <= 0
                       MagnetFarmBone = false
                    end
                end
            else
                MagnetFarmBone = false
                Questtween = totarget(CFrame.new(-9506.14648, 172.130661, 6101.79053))
                if (CFrame.new(-9506.14648, 172.130661, 6101.79053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                    if Questtween then
                        Questtween:Stop()
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9506.14648, 172.130661, 6101.79053, -0.999731541, 0, -0.0231563263, 0, 1, 0, 0.0231563263, 0, -0.999731541)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if MagnetFarmBone and _G.AutoFarmBone then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if MagnetFarmBone  and _G.AutoFarmBone and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosFarmBone
                    v.HumanoidRootPart.CanCollide = false
                end
            end
        end
    end
end)
local string_1 = "getInventoryWeapons";
local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
local ListInventoryWeapons = Target:InvokeServer(string_1);

function inpar()
local noclip = Instance.new('Part',workspace)
noclip.Name = "noclip"
noclip.CanCollide = true
noclip.Anchored = true
noclip.Size = Vector3.new(30,0,30)
noclip.Transparency = 1
game:GetService("Workspace")["noclip"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-4,0)
end
Tab1:CreateToggle("StandStill[KrnlNotSupport]",nil,function(d)
    _G.Secrect2 = d
    if _G.Secrect2 == true then
    while _G.Secrect2 do wait()
setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
setfflag("CrashPadUploadToBacktraceToBacktraceBaseUrl", "")
setfflag("CrashUploadToBacktracePercentage", "0")
setfflag("CrashUploadToBacktraceBlackholeToken", "")
setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")
    end
    end
end)



function autofarm()
    if _G.FarmLevel and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
        cq()
        kkii = require(game.ReplicatedStorage.Util.CameraShaker)
        kkii:Stop()
        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
            cq()
            _G.FastAttack1 = false
            _G.StartMagnetAutoFarm = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                wait(1.5)
                local string_1 = "StartQuest";
                local string_2 = NameQuest;
                local number_1 = LevelQuest;
                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                Target:InvokeServer(string_1, string_2, number_1);
                local string_1 = "SetSpawnPoint";
                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                Target:InvokeServer(string_1);
        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
            cq()
            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.FarmLevel and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                            repeat wait()
                                    _G.StartMagnetAutoFarm = false
                                    _G.FastAttack1 = true
                                    EquipWeapon(_G.SelectToolWeapon)
                                    PosMonAutoFarm = v.HumanoidRootPart.CFrame
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        local args = {
                                            [1] = "Buso"
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,FMode3)
                                    if _G.FastAttack2 == false then 
                                    game:GetService'VirtualUser':CaptureController()
								    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    _G.StartMagnetAutoFarm = true
                            until not _G.FarmLevel or not v.Parent or v.Humanoid.Health <= 0 or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                local l__Remotes__11 = game.ReplicatedStorage:WaitForChild("Remotes");
                                l__Remotes__11.CommF_:InvokeServer("AbandonQuest");
                            end
                            _G.StartMagnetAutoFarm = false
                            _G.FastAttack1 = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                        else
                            local l__Remotes__11 = game.ReplicatedStorage:WaitForChild("Remotes");
                            l__Remotes__11.CommF_:InvokeServer("AbandonQuest");
                        end 
                    end
                end
            else
                if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                    local l__Remotes__11 = game.ReplicatedStorage:WaitForChild("Remotes");
                    l__Remotes__11.CommF_:InvokeServer("AbandonQuest");
                end
                _G.StartMagnetAutoFarm = false
                _G.FastAttack1 = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            end
        end 
    end
end

spawn(function()
	while wait() do
        if _G.FarmLevel then
            autofarm()
        end
    end
end)

-- Magnet
spawn(function()
    for i = 1,math.huge do game:GetService("RunService").RenderStepped:Wait()
        if _G.StartMagnetAutoFarm and _G.FarmLevel then
            for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
                if x.Name == Ms and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x.Humanoid.Health > 0 and (x.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= magbring then
                    x.HumanoidRootPart.CanCollide = false
                    x.HumanoidRootPart.CFrame = PosMonAutoFarm
                    x.HumanoidRootPart.Size = Vector3.new(5,5,5)
                    x.HumanoidRootPart.Transparency = 0.80
                    x.Humanoid:ChangeState(11)
                end 
            end
        end
    end
end)




Tab1:CreateToggle("AutoSuperhuman",nil,function(vu)
    _G.Superhuman = vu
end)
spawn(function()
	while wait(.1) do
		if _G.Superhuman == true then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
				local args = {
					[1] = "BuyBlackLeg"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end   
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
					_G.SelectToolWeapon = "Black Leg"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
					_G.SelectToolWeapon = "Electro"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
					_G.SelectToolWeapon = "Fishman Karate"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
					_G.SelectToolWeapon = "Dragon Claw"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
					local args = {
						[1] = "BlackbeardReward",
						[2] = "DragonClaw",
						[3] = "1"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "BlackbeardReward",
						[2] = "DragonClaw",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
					local args = {
						[1] = "BlackbeardReward",
						[2] = "DragonClaw",
						[3] = "1"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "BlackbeardReward",
						[2] = "DragonClaw",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
					_G.fnz = false
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end
end)
if world1 then
    Tab1:CreateToggle("AutoNewWorld",nil,function(value)
        _G.AutoNew = value
    end)
    spawn(function()
        while wait() do
            if _G.AutoNew then
                local MyLevel = game.Players.localPlayer.Data.Level.Value
                if MyLevel >= 700 and world1 then
                    _G.FarmLevel = false
                end
            end
        end
    end)
    
    spawn(function()
        while wait(.1) do
            if _G.AutoNew == true then
                local MyLevel = game.Players.localPlayer.Data.Level.Value
                if MyLevel >= 700 and world1 then
                    _G.FarmLevel = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    _G.SelectToolWeapon = "Key"
                    TP2FF(CFrame.new(4849.29883, 5.65138149, 719.611877))
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                    wait(0.5)
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                        wait(.4)
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                    end
                    TP2FF(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                    wait(0.5)
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        _G.FarmLevel = false
                        CheckBoss = true1
                        EquipWeapon(_G.SelectToolWeapon)
                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                        end
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if _G.AutoNew and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                repeat wait()
                                    pcall(function()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        _G.FastAttack = true
                                        _G.FarmLevel = false
                                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                        v.HumanoidRootPart.BrickColor = BrickColor.new("White")
                                        v.HumanoidRootPart.CanCollide = false
                                        totarget(v.HumanoidRootPart.CFrame*Method)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        EquipWeapon(_G.SelectToolWeapon)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                    end)
                                until not _G.AutoNew or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    else
                        _G.FarmLevel = false
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                            wait(.4)
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                        end
                        TP2FF(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                    end
                end
            end
        end
    end)
elseif world2 then
    Tab1:CreateToggle("AutoThirdWorld",nil,function(vu)
        _G.AutoThird = vu
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoThird then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and world2 then
                        _G.FarmLevel = false
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress").KilledIndraBoss == false then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
                                if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == "Bar" then
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                                            if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                                wait(1.1)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                            else
                                                TPFF(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                            end
                                            if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                                        repeat game:GetService("RunService").Heartbeat:wait()
                                                            pcall(function()
                                                                EquipWeapon(_G.SelectToolWeapon)
                                                                TPFF(v.HumanoidRootPart.CFrame * Method)
                                                                require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                            end)
                                                        until _G.AutoThird == false or v.Humanoid.Health <= 0 or not v.Parent
                                                    end
                                                end
                                            elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                                TP2FF(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                            end
                                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 0 then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                        if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                                                            repeat game:GetService("RunService").Heartbeat:wait()
                                                                pcall(function()
                                                                    EquipWeapon(_G.SelectToolWeapon)
                                                                    TPFF(v.HumanoidRootPart.CFrame * Method)
                                                                    require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                                                    game:GetService'VirtualUser':CaptureController()
                                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                                end)
                                                            until _G.AutoThird == false or v.Humanoid.Health <= 0 or not v.Parent
                                                        end
                                                    end
                                                else
                                                    if (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
                                                        wait()
                                                    end
                                                    TPFF(CFrame.new(2284.912109375, 15.537666320801, 905.48291015625))
                                                end
                                            elseif _G.AutoThird and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                                bithop()
                                            elseif not _G.AutoThird and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                                if (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
                                                    wait()
                                                end
                                                TPFF(CFrame.new(2284.912109375, 15.537666320801, 905.48291015625))
                                            end
                                        end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") ~= 0 then
                                        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if string.find(v.Name, "Fruit") then
                                                if v:IsA("Tool") then
                                                    if (v.Handle.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20000 then
                                                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                    end
                                                end
                                            end
                                        end
                                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Quake Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Human: Buddha Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("String Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Paw Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dough Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Venom Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Control Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Quake Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Human: Buddha Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("String Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Paw Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Dough Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Venom Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Control Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Fruit") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
                                        end
                                    end
                                else
                                    TP2FF(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                                    if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                        if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == "Swan Pirate [Lv. 775]" then
                                                    PosMonBarto =  v.HumanoidRootPart.CFrame
                                                    pcall(function()
                                                        repeat wait()
                                                            for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
                                                                if x.Name ==  "Swan Pirate [Lv. 775]"  then
                                                                        x.Humanoid:ChangeState(11)
                                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                                        x.HumanoidRootPart.CanCollide = false
                                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                                        x.HumanoidRootPart.Size = Vector3.new(30, 30, 30)
                                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                                        x.HumanoidRootPart.CFrame = PosMonBarto
                                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                                end
                                                            end
                                                            EquipWeapon(_G.SelectToolWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                                        TP2FF( v.HumanoidRootPart.CFrame * Method)
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))                           
                                                        until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                    end)
                                                end
                                            end
                                        else
                                            TP2FF(CFrame.new(1057.92761, 137.614319, 1242.08069))
                                        end
                                    else
                                        TP2FF(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                        wait(1.1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                                    end
                                elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                                    if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                        Ms = "Jeremy [Lv. 850] [Boss]"
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == Ms then
                                                repeat wait()
                                                    EquipWeapon(_G.SelectToolWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                                    TP2FF(v.HumanoidRootPart.CFrame * Method)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                        TP2FF(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                        wait(1.1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                                        wait(1)
                                        TP2FF(CFrame.new(2099.88159, 448.931, 648.997375))
                                        wait(2)
                                    else
                                        TP2FF(CFrame.new(2099.88159, 448.931, 648.997375))
                                    end
                                    wait(15)
                                    if not game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                        bithop()
                                    end
                                elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                                    TP2FF(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                                    wait(1.5)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                                    wait(1.5)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                                    wait(1.5)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                                    wait(1.5)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
                                    wait(1.5)                                                                  
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368) 
                                    wait(1.5)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 15.795166, 1717.90625)
                                    wait(1.5)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 15.8604736, 1724.79541)
                                    wait(1.5)
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    end
                end
            end
        end)
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do wait(5)
                if _G.AutoThird and world2 and game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") ~= 0 then
                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Quake Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Human: Buddha Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("String Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Paw Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dough Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Venom Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Control Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Quake Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Human: Buddha Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("String Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Rumble Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Paw Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Gravity Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Dough Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Shadow Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Venom Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Control Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Fruit") then
                                bithop()
                            end
                        end
                    end
                end
            end
        end)
    end)
end



if world1 then
    Tab1:CreateLine()
    Tab1:CreateToggle("AutoPoleV1",nil,function(d)
     _G.AutoPole = d
    end)

    spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoPole then
                if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Thunder God [Lv. 575] [Boss]" then
                            repeat wait()
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Thunder God [Lv. 575] [Boss]" then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        totarget(v.HumanoidRootPart.CFrame * Method)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        EquipWeapon(_G.SelectToolWeapon)
                                    end
                                end
                            until v.Humanoid.Health == 0 or _G.AutoPole == false
                        end
                    end
                else
                    TP2FF(CFrame.new(-7848.40381, 5606.8335, -2238.69238, 0.137055844, 1.04069002e-08, -0.990563333, -3.31985071e-08, 1, 5.91264637e-09, 0.990563333, 3.20748583e-08, 0.137055844))
                end
            end
        end)
    end
    end)

    Tab1:CreateToggle("AutoPoleV1Hop",nil,function(d)
     _G.AutoPoleHop = d
    end)

    spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoPoleHop then
                if not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") or not game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                    bithop()
                    wait(0.5)
                    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
                end
            end
        end)
    end
    end)

    spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoPoleHop then
                if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Thunder God [Lv. 575] [Boss]" then
                            repeat wait()
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Thunder God [Lv. 575] [Boss]" then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        totarget(v.HumanoidRootPart.CFrame * Method)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        EquipWeapon(_G.SelectToolWeapon)
                                    end
                                end
                            until v.Humanoid.Health == 0 or _G.AutoPoleHop == false
                        end
                    end
                else
                    TP2FF(CFrame.new(-7848.40381, 5606.8335, -2238.69238, 0.137055844, 1.04069002e-08, -0.990563333, -3.31985071e-08, 1, 5.91264637e-09, 0.990563333, 3.20748583e-08, 0.137055844))
                end
            end
        end)
    end
    end)
end



if world2 then
    Tab1:CreateLine()
Tab1:CreateToggle("AutoRengoku",nil,function(d)
    _G.AutoRengoku = d
    _G.Gaviteop = d
end)
spawn(function()
	pcall(function()
		while wait(.1) do
			if _G.AutoRengoku then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
				elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
							repeat game:GetService("RunService").Heartbeat:wait()
								EquipWeapon(_G.SelectToolWeapon)
								PosMonRengoku = v.HumanoidRootPart.CFrame
								require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
								inpar()
								if syn then
								    setfflag("HumanoidParallelRemoveNoPhysics", "False")
                                    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                                    setfflag("CrashPadUploadToBacktraceToBacktraceBaseUrl", "")
                                    setfflag("CrashUploadToBacktracePercentage", "0")
                                    setfflag("CrashUploadToBacktraceBlackholeToken", "")
                                    setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")
								end
								totarget(v.HumanoidRootPart.CFrame * CFrame.new(0,FMode1,FMode3))
								inpar()
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				else
				    inpar()
				    if syn then
								    setfflag("HumanoidParallelRemoveNoPhysics", "False")
                                    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                                    setfflag("CrashPadUploadToBacktraceToBacktraceBaseUrl", "")
                                    setfflag("CrashUploadToBacktracePercentage", "0")
                                    setfflag("CrashUploadToBacktraceBlackholeToken", "")
                                    setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")
					end
					totarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
				end
			end
		end
	end)
end)

Tab1:CreateToggle("AutoLegendarySword",nil,function(d)
    _G.LegenSword = d
end)
spawn(function()
	while wait(.1) do
		if _G.LegenSword then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
		end 
	end
end)

-- Auto Quest Bartilo
Tab1:CreateToggle("AutoQuestBartilo",nil,function(v)
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 and v == true then
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Notification",
  Text = "Quest Bartilo Successfully"
})
    else
        _G.AutoQuestBartilo = v
    end
end)
spawn(function()
    while wait() do
        if _G.AutoQuestBartilo and game.Players.LocalPlayer.Data.Level.Value >= 850 then
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                    if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Swan Pirate [Lv. 775]" then
                                pcall(function()
                                    repeat wait()
                                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                            Farmtween = totarget(v.HumanoidRootPart.CFrame)
                                            _G.AutoBartiloBring = false
                                        elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Farmtween then
                                                Farmtween:Stop()
                                            end
                                            PosMonAutoQuestBartilo = v.HumanoidRootPart.CFrame
                                            EquipWeapon(_G.SelectToolWeapon)
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                local args = {
                                                    [1] = "Buso"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            totarget(v.HumanoidRootPart.CFrame * Method)
                                            game:GetService('VirtualUser'):CaptureController()
                                            game:GetService('VirtualUser'):Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                                            game:GetService('VirtualUser'):Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                                            _G.AutoBartiloBring  = true
                                        end 
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoQuestBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    _G.AutoBartiloBring = false
                                end)
                            end
                        end
                    else
                        Questtween = totarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
                        if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if Questtween then
                                Questtween:Stop()
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
                        end
                    end
                else
                    Bartilotween = totarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
                    if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                        if Bartilotween then
                            Bartilotween:Stop()
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
                        local args = {
                            [1] = "StartQuest",
                            [2] = "BartiloQuest",
                            [3] = 1
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end 
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                    Ms = "Jeremy [Lv. 850] [Boss]"
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Ms then
                            repeat wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Farmtween then
                                        Farmtween:Stop()
                                    end
                                    EquipWeapon(_G.SelectToolWeapon)
                                    
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        local args = {
                                            [1] = "Buso"
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    totarget(v.HumanoidRootPart.CFrame * Method)
                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                                    game:GetService('VirtualUser'):Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                                end 
                            until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoQuestBartilo == false
                        end
                    end
                else
                    Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
                    if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                        if Bartilotween then
                            Bartilotween:Stop()
                        end
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
                    end
                end
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                    Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
                elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                    if Bartilotween then
                        Bartilotween:Stop()
                    end
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
                    wait(.5)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
                end
            end
        end 
    end
end)
-- Magnet
spawn(function()
    while wait() do game:GetService("RunService").RenderStepped:Wait()
        if _G.AutoBartiloBring and _G.AutoQuestBartilo then
            for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
                if  _G.AutoBartiloBring and _G.AutoQuestBartilo and x.Name == Ms and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x.Humanoid.Health > 0 and (x.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                    x.HumanoidRootPart.CanCollide = false
                    x.HumanoidRootPart.CFrame = PosMonAutoQuestBartilo
                    x.Humanoid:ChangeState(13)
                end 
            end
        end
    end
end)
Tab1:CreateToggle("AutoSwan",nil,function(d)
_G.AutoSwan = d
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoSwan then
                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                            repeat wait()
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        totarget(v.HumanoidRootPart.CFrame * Method)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        EquipWeapon(_G.SelectToolWeapon)
                                    end
                                end
                            until v.Humanoid.Health == 0 or _G.AutoSwan == false
                        end
                    end
                else
                    TP2FF(CFrame.new(2191.1674804688, 15.177842140198, 694.69873046875))
                end
            end
        end)
    end
end)

Tab1:CreateToggle("AutoSwanHop",nil,function(d)
_G.AutoSwanHop = d
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoSwanHop then
                if not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                    bithop()
                    wait(0.5)
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoSwanHop then
                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                            repeat wait()
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        totarget(v.HumanoidRootPart.CFrame * Method)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        EquipWeapon(_G.SelectToolWeapon)
                                    end
                                end
                            until v.Humanoid.Health == 0 or _G.AutoSwanHop == false
                        end
                    end
                else
                    TP2FF(CFrame.new(2191.1674804688, 15.177842140198, 694.69873046875))
                end
            end
        end)
    end
end)
end



if world3 then
    Tab1:CreateLine()
Tab1:CreateToggle("AutoHakiRainbow",nil,function(d)
_G.AutoHakiRainbow = d
end)

spawn(function()
    while wait() do
        if _G.AutoHakiRainbow then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                TP2FF(CFrame.new(-11891.202148438, 930.57678222656, -8760.0498046875))
                wait(.9)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
            else
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Stone (0/1)" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Stone [Lv. 1550] [Boss]" then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                EquipWeapon(_G.SelectToolWeapon)
                                totarget(v.HumanoidRootPart.CFrame * Method)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            end
                        end
                    else
                        TP2FF(CFrame.new(-1109.6944580078, 40.006885528564, 6730.9833984375))
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Island Empress (0/1)" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                EquipWeapon(_G.SelectToolWeapon)
                                totarget(v.HumanoidRootPart.CFrame * Method)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            end
                        end
                    else
                        TP2FF(CFrame.new(5702.2724609375, 601.94860839844, 201.07873535156))
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Kilo Admiral (0/1)" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                EquipWeapon(_G.SelectToolWeapon)
                                totarget(v.HumanoidRootPart.CFrame * Method)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            end
                        end
                    else
                        TP2FF(CFrame.new(2861.53515625, 423.58441162109, -7254.0751953125))
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Captain Elephant (0/1)" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                EquipWeapon(_G.SelectToolWeapon)
                                totarget(v.HumanoidRootPart.CFrame * Method)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            end
                        end
                    else
                        TP2FF(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875))
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Beautiful Pirate (0/1)" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                EquipWeapon(_G.SelectToolWeapon)
                                totarget(v.HumanoidRootPart.CFrame * Method)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            end
                        end
                    else
                        TP2FF(CFrame.new(5378.6337890625, 22.56223487854, -26.053804397583))
                    end
                end
            end
        end
    end
end)

Tab1:CreateToggle("Auto EliteHunter",nil,function(d)
    EliteHunter = d
    if vu == false then
        wait(1)
        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)

spawn(function()
	pcall(function()
		while wait() do
			if EliteHunter then
				local QuestElite = string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre")
				local ReplicatedStorage = game:GetService("ReplicatedStorage");
				local Enemies = game:GetService("Workspace").Enemies
				if ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") or Enemies:FindFirstChild("Diablo [Lv. 1750]") or ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or Enemies:FindFirstChild("Urban [Lv. 1750]") or ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or Enemies:FindFirstChild("Deadre [Lv. 1750]") then
					Elite = true
					Auto_Farm = false
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						TP2FF(CFrame.new(-5418.392578125, 313.74130249023, -2824.9157714844))
						if (Vector3.new(-5418.392578125, 313.74130249023, -2824.9157714844) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							wait(1.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestReward.Title.Text == "Reward:\n$15,000\n60,000,000 Exp." then
							for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
								if Elite and v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" then
									repeat game:GetService("RunService").Heartbeat:wait()
										if QuestElite then
											EquipWeapon(SelectToolWeapon)
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 4))
											require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										else
											TP2FF(CFrame.new(-5418.392578125, 313.74130249023, -2824.9157714844))
											if (Vector3.new(-5418.392578125, 313.74130249023, -2824.9157714844) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
												wait(1.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
											end
										end
									until not Elite or v.Humanoid.Health <= 0 or not v.Parent or not EliteHunter or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
								end
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonHunter")
						end
					end
				else
					Elite = false
				end
				if _G.AutoFarm and Elite == false then
					Auto_Farm = true
				end
				if _G.Auto_Elite_Hop and Three_World and Elite == false then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false then
						Teleport()
						--SafeMode = true
						TP(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000,0))
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
						repeat game:GetService("RunService").Heartbeat:wait()
							local X = math.random(1,1000)
                            local Z = math.random(1,1000)
                            local LP = game.Players.LocalPlayer.Character
                            TP(CFrame.new(X,LP.HumanoidRootPart.CFrame.Y,Z))
						until game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false
						Teleport()
					end
				end
			end
		end
	end)
end)

Tab1:CreateToggle("Auto indraHop",_G.Auto_indra_Hop,function(d)
    _G.Auto_indra_Hop = false
end)

Tab1:CreateToggle("Auto DarkDaggerHop",_G.Auto_Dark_Dagger_Hop,function(d)
    _G.Auto_Dark_Dagger_Hop = false
end)

spawn(function()
	while wait(.1) do
		if _G.Auto_Dark_Dagger_Hop then
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Dagger") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Dagger") then
				game:Shutdown()
			end
		end
	end
end)

spawn(function()
	while wait(.1) do
		if _G.Auto_indra_Hop or _G.Auto_Dark_Dagger_Hop then
			if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
				TP2FF(CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625))
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
						if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
							if v.Humanoid.Health > 0 then
								repeat game:GetService("RunService").Heartbeat:wait()
									EquipWeapon(SelectToolWeapon)
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 16, 7)
									require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until v.Humanoid.Health <= 0 or not v.Parent
							end
						end
					else
						TP2FF(CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625))
					end
				end
			end
			if (_G.Auto_Dark_Dagger_Hop or _G.Auto_indra_Hop) and Three_World and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false then
					Teleport()
					--SafeMode = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000,0))
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
					repeat game:GetService("RunService").Heartbeat:wait()
						local X = math.random(1,1000)
						local Z = math.random(1,1000)
						local LP = game.Players.LocalPlayer.Character
						TP(CFrame.new(X,LP.HumanoidRootPart.CFrame.Y,Z))
					until game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false
					Teleport()
				end
			end
		end
	end
end)

Tab1:CreateToggle("AutoObservationHakiV2",nil,function(d)
_G.AutoObservationHakiV2 = d
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("RunService").Heartbeat:Wait()
            if _G.AutoObservationHakiV2 and StatrMagnet then
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Forest Pirate [Lv. 1825]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.HumanoidRootPart.CFrame = PosMon
                    end
                end
            end
        end)
    end)
end)

spawn(function()
    while wait() do
        if _G.AutoObservationHakiV2 then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                TP2FF(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                wait(1)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
            else
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                    TP2FF(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                    TP2FF(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                    wait(1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Forest Pirate [Lv. 1825]" then
                                repeat wait()
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    EquipWeapon(_G.SelectToolWeapon)
                                    TP2FF(v.HumanoidRootPart.CFrame * Method)
                                    PosMon =  v.HumanoidRootPart.CFrame
                                    if sethiddenproperty then
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    Click1()
                                    StatrMagnet = true
                                until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
                                StatrMagnet = false
                            end
                        end
                    else
                        TP2FF(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                repeat wait()
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    EquipWeapon(_G.SelectToolWeapon)
                                    totarget(v.HumanoidRootPart.CFrame * Method)										
                                    if sethiddenproperty then
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    Click1()
                                until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        TP2FF(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
                    end
                else
                    for i,v in pairs(game.Workspace:GetDescendants()) do
                        if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                            v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
                            wait()
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                            wait()
                        end
                    end   
                end
            end
        end
    end
end)

function enemyrip()
    TP2FF(CFrame.new(-5332.30371, 423.985413, -2673.48218)) 
    wait()
    if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
        local mobs = game.Workspace.Enemies:GetChildren()
        for i,v in pairs(mobs) do
            if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")
end

function enemylongma()
    TP2FF(CFrame.new(-10171.7051, 406.981995, -9552.31738)) 
    if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
        local mobs = game.Workspace.Enemies:GetChildren()
        for i,v in pairs(mobs) do
            if v.Name == "Longma [Lv. 2000] [Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")
end

Tab1:CreateToggle("AutoCavender",nil,function(d)
_G.AutoCavender = d
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoCavender then
                if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                            repeat wait()
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        totarget(v.HumanoidRootPart.CFrame * Method)
                                        EquipWeapon(_G.SelectToolWeapon)
                                        VirtualUser:CaptureController()
                                    VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    end
                                end
                            until v.Humanoid.Health == 0 or _G.AutoCavender == false
                        end
                    end
                else
                    totarget(CFrame.new(5315.41211, 22.562233, -65.2840424, -0.999448597, 1.71477161e-08, -0.0332041234, 1.9911095e-08, 1, -8.28932798e-08, 0.0332041234, -8.35087022e-08, -0.999448597))
                end
            end
        end)
    end
end)
Tab1:CreateToggle("AutoCavenderHop",nil,function(d)
_G.AutoCavenderHop = d
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoCavenderHop then
                if not game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                    bithop()
                    wait(0.5)
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
                end 
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoCavenderHop then
                if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                            repeat wait()
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        totarget(v.HumanoidRootPart.CFrame * Method)
                                        EquipWeapon(_G.SelectToolWeapon)
                                        VirtualUser:CaptureController()
                                    VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                    end
                                end
                            until v.Humanoid.Health == 0 or _G.AutoCavenderHop == false
                        end
                    end
                else
                    totarget(CFrame.new(5315.41211, 22.562233, -65.2840424, -0.999448597, 1.71477161e-08, -0.0332041234, 1.9911095e-08, 1, -8.28932798e-08, 0.0332041234, -8.35087022e-08, -0.999448597))
                end
            end
        end)
    end
end)
Tab1:CreateToggle("AutoBuddySword",nil,function(vu)
    _G.Event = {
    ["Auto Buddy Sword"] = vu, -- true / false
    ["Select Weapon"] = _G.SelectToolWeapon, -- Your weapon
    ["Hop"] = false, -- true / false
}

_G.Settings = {
    ["Team"] = "Pirate", -- Pirate, Marine
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanawat2008/xSaigez-free/main/Buddy-fix.lua"))();
end)
Tab1:CreateToggle("AutoBuddySwordHop",nil,function(vu)
_G.Event = {
    ["Auto Buddy Sword"] = vu, -- true / false
    ["Select Weapon"] = _G.SelectToolWeapon, -- Your weapon
    ["Hop"] = vu, -- true / false
}

_G.Settings = {
    ["Team"] = "Pirate", -- Pirate, Marine
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanawat2008/xSaigez-free/main/Buddy-fix.lua"))(); 
end)
end


AutoQuestBoss = true
function CheckQuestBoss()
    -- Old World
    if _G.SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
        MsBoss = "Saber Expert [Lv. 200] [Boss]"
        NameBoss = "Saber Expert"
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
    elseif _G.SelectBoss == "The Saw [Lv. 100] [Boss]" then
        MsBoss = "The Saw [Lv. 100] [Boss]"
        NameBoss = "The Saw"
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
    elseif _G.SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
        MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
        NameBoss = "Greybeard"
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
    elseif _G.SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
        MsBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameBoss = "The Gorilla King"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
    elseif _G.SelectBoss == "Bobby [Lv. 55] [Boss]" then
        MsBoss = "Bobby [Lv. 55] [Boss]"
        NameBoss = "Bobby"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
    elseif _G.SelectBoss == "Yeti [Lv. 110] [Boss]" then
        MsBoss = "Yeti [Lv. 110] [Boss]"
        NameBoss = "Yeti"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
    elseif _G.SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
        MsBoss = "Mob Leader [Lv. 120] [Boss]"
        NameBoss = "Mob Leader"
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
    elseif _G.SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
        MsBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameBoss = "Vice Admiral"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
    elseif _G.SelectBoss == "Warden [Lv. 175] [Boss]" then
        MsBoss = "Warden [Lv. 175] [Boss]"
        NameBoss = "Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
        MsBoss = "Chief Warden [Lv. 200] [Boss]"
        NameBoss = "Chief Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.SelectBoss == "Swan [Lv. 225] [Boss]" then
        MsBoss = "Swan [Lv. 225] [Boss]"
        NameBoss = "Swan"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
        MsBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameBoss = "Magma Admiral"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
    elseif _G.SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
        MsBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameBoss = "Fishman Lord"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
    elseif _G.SelectBoss == "Wysper [Lv. 500] [Boss]" then
        MsBoss = "Wysper [Lv. 500] [Boss]"
        NameBoss = "Wysper"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
    elseif _G.SelectBoss == "Thunder God [Lv. 575] [Boss]" then
        MsBoss = "Thunder God [Lv. 575] [Boss]"
        NameBoss = "Thunder God"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
    elseif _G.SelectBoss == "Cyborg [Lv. 675] [Boss]" then
        MsBoss = "Cyborg [Lv. 675] [Boss]"
        NameBoss = "Cyborg"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
    -- New World
    elseif _G.SelectBoss == "Diamond [Lv. 750] [Boss]" then
        MsBoss = "Diamond [Lv. 750] [Boss]"
        NameBoss = "Diamond"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
    elseif _G.SelectBoss == "Jeremy [Lv. 850] [Boss]" then
        MsBoss = "Jeremy [Lv. 850] [Boss]"
        NameBoss = "Jeremy"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
    elseif _G.SelectBoss == "Fajita [Lv. 925] [Boss]" then
        MsBoss = "Fajita [Lv. 925] [Boss]"
        NameBoss = "Fajita"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
    elseif _G.SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
        MsBoss = "Don Swan [Lv. 1000] [Boss]"
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
    elseif _G.SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
        MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameBoss = "Smoke Admiral"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
    elseif _G.SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
        NameBoss = "Cursed Captain"
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
    elseif _G.SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
        NameBoss = "Darkbeard"
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
    elseif _G.SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
        MsBoss = "Order [Lv. 1250] [Raid Boss]"
        NameBoss = "Order"
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
    elseif _G.SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameBoss = "Awakened Ice Admiral"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
    elseif _G.SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
        MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
         NameBoss = "Tide Keeper"
        NameQuestBoss = "ForgottenQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
    -- Thire World
    elseif _G.SelectBoss == "Stone [Lv. 1550] [Boss]" then
        MsBoss = "Stone [Lv. 1550] [Boss]"
        NameBoss = "Stone"
        NameQuestBoss = "PiratePortQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif _G.SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
         NameBoss = "Island Empress"
        NameQuestBoss = "AmazonQuest2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif _G.SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
        MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameBoss = "Kilo Admiral"
        NameQuestBoss = "MarineTreeIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss =CFrame.new(2846, 433, -7100)
    elseif _G.SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameBoss = "Captain Elephant"
        NameQuestBoss = "DeepForestIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif _G.SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameBoss = "Beautiful Pirate"
        NameQuestBoss = "DeepForestIsland2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif _G.SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
        NameBoss = "rip_indra True Form"
        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif _G.SelectBoss == "Longma [Lv. 2000] [Boss]" then
        MsBoss = "Longma [Lv. 2000] [Boss]"
        NameBoss = "Longma"
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif _G.SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
        NameBoss = "Soul Reaper"
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    elseif _G.SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
        MsBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameBoss = "Cake Queen"
        NameQuestBoss = "IceCreamIslandQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888)
        CFrameBoss = CFrame.new(-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
    end
end
local Bosslist = {}
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name ~= "Ice Admiral [Lv. 700] [Boss]" then
            table.insert(Bosslist, v.Name)
        end
    end
end
for i, v in pairs(game.workspace.Enemies:GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name ~= "Ice Admiral [Lv. 700] [Boss]" then
            table.insert(Bosslist, v.Name)
        end
    end
end

function AutoFramBoss()
    CheckQuestBoss()
    if MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Cake Queen [Lv. 2175] [Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "The Saw [Lv. 100] [Boss]" or MsBoss == "Greybeard [Lv. 750] [Raid Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Saber Expert [Lv. 200] [Boss]" or MsBoss == "Mob Leader [Lv. 120] [Boss]" or MsBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if _G.FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                    repeat wait() 
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                            Farmtween = totarget(v.HumanoidRootPart.CFrame)
                        elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if Farmtween then
                                Farmtween:Stop()
                            end
                            EquipWeapon(_G.SelectToolWeapon)
                            Usefastattack = true
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            totarget(v.HumanoidRootPart.CFrame * Method)
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                            game:GetService('VirtualUser'):Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                        end
                    until not _G.FramBoss or not v.Parent or v.Humanoid.Health <= 0
                    Usefastattack = false
                end
            end
        else
            Usefastattack = false
            Questtween = toTarget(CFrameBoss.Position,CFrameBoss)
            if (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                if Questtween then
                    Questtween:Stop()
                end
                totarget(CFrameBoss)
                wait(1)
            end 
        end
    else
        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
            Usefastattack = false
            CheckQuestBoss()
            Questtween = toTarget(CFrameQuestBoss.Position,CFrameQuestBoss)
            if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                if Questtween then
                    Questtween:Stop()
                end
                totarget(CFrameQuestBoss)
                wait(1.1)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
            end 
        elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
            if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                local l__Remotes__11 = game.ReplicatedStorage:WaitForChild("Remotes");
                l__Remotes__11.CommF_:InvokeServer("AbandonQuest");
            end
            if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                        if _G.FramBoss and v.Name == MsBoss and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat wait()
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    Farmtween = totarget(v.HumanoidRootPart.CFrame)
                                elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    EquipWeapon(_G.SelectToolWeapon)
                                    if Farmtween then
                                        Farmtween:Stop()
                                    end
                                    if Modstween then
                                        Modstween:Stop()
                                    end
                                    Usefastattack = true
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        local args = {
                                            [1] = "Buso"
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    totarget(v.HumanoidRootPart.CFrame * Method)
                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                                    game:GetService('VirtualUser'):Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                                end
                            until not _G.FramBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            Usefastattack = false
                        end
                    else
                        local l__Remotes__11 = game.ReplicatedStorage:WaitForChild("Remotes");
                        l__Remotes__11.CommF_:InvokeServer("AbandonQuest");
                    end
                end
            else
                Usefastattack = false
                Questtween = toTarget(CFrameBoss.Position,CFrameBoss)
                if ThreeWorld and game:GetService("Players").LocalPlayer.Data.Level.Value >= 1925 and MsBoss == "Beautiful Pirate [Lv. 1950] [Boss]" and (CFrameBoss.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 20000 then
                    if Questtween then
                        Questtween:Stop()
                    end
                    local TouchInterest = game:GetService("Workspace").Map.Turtle.Entrance.Door.BossDoor.Hitbox
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                    UseTween = false
                    wait(.1)
                elseif (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                    if Questtween then
                        Questtween:Stop()
                    end
                    totarget(CFrameBoss)
                end 
            end
        end
    end
end

Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
	if v:IsA("Tool") then
		table.insert(Wapon ,v.Name)
    end
end
local SelectToolWeapona = Tab11:CreateDropdown("SelectWeapon",Wapon,function(a)
_G.SelectToolWeapon = a
end)
Tab11:CreateButton("RefeshWeapon",function()
SelectToolWeapona:Clear()
	Wapon = {}
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then
			SelectToolWeapona:Add(v.Name)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			SelectToolWeapona:Add(v.Name)
		end
	end
end)
Tab11:CreateToggle("AutoHaki",true,function(d)
_G.AUTOHAKI = d
end)
spawn(function()
    while wait(.1) do
        if _G.AUTOHAKI then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

Tab11:CreateToggle("Fastattack[1]",true,function(d)
    _G.FastAttack1 = d
end)
Tab11:CreateToggle("Fastattack[2]",nil,function(d)
    _G.FastAttack2 = d
end)
_G.FastAttack2 = true
wait(0.5)
_G.FastAttack2 = false
Tab11:CreateToggle("DeleteAttackFx",nil,function(d)
    _G.DeleteAttackFx = d
    if _G.DeleteAttackFx == true then
    while _G.DeleteAttackFx do wait()
        for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
            if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "Sounds" then
                v:Destroy() 
            end
        end
    end
    end
end)

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.FastAttack1 == true or _G.FastAttack2 == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
        wait(1)
    end)
end)

local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    local VirtualUser = game:GetService('VirtualUser')
    local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
    local LocalPlayer = game.Players.LocalPlayer
    local Framework = {
        Combat = require(LocalPlayer.PlayerScripts.CombatFramework),
        Rig = require(LocalPlayer.PlayerScripts.CombatFramework.RigController)
    }
    local cd = 0.1
    function Attack()
        spawn(function()
            while wait() do
            pcall(function()
                local Controller = Framework.Combat.activeController
                if Controller and tick() >= cd then
                    cd = tick() + 0.1
                    spawn(function()
                        Controller:attack()
                    end)
                    Controller.increment = 4
                end
            end)
        end
        end)
    end
spawn(function()
game:GetService("RunService").Stepped:Connect(function()
        if _G.FastAttack1 == true and ( _G.AutoFarmBone or _G.AutoFarmBon or _G.AutoHallowScythe or _G.FramBoss or _G.FarmLevel or _G.AutoNew or _G.AutoThird or _G.AutoSwan or _G.AutoSwanHop or _G.AutoPole or _G.AutoPoleHop or _G.AutoHakiRainbow or _G.AutoObservationHakiV2 or _G.AutoEliteHunter or _G.AutoEliteHunterHop or _G.AutoTushitaSword or _G.AutoTushitaSword or  _G.FramBoss or _G.AutoFarmAllBoss or _G.AutoCavender or _G.AutoCavenderHop or _G.AutoRengoku) then
            RigC.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
            RigC.activeController.timeToNextBlock = 0
            RigC.activeController.hitboxMagnitude = 100
            RigC.activeController.attacking = false
    		RigC.activeController.increment = 3
    		RigC.activeController.humanoid.AutoRotate = true
    		RigC.activeController.blocking = false
    		Rig.activeController.focusStart = 0
            game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
        end
    end)
end)
spawn(function()
game:GetService("RunService").Stepped:Connect(function()
        if _G.FastAttack2 == true and ( _G.AutoFarmBone or _G.AutoFarmBon or _G.AutoHallowScythe or _G.FramBoss or _G.FarmLevel or _G.AutoNew or _G.AutoThird or _G.AutoSwan or _G.AutoSwanHop or _G.AutoPole or _G.AutoPoleHop or _G.AutoHakiRainbow or _G.AutoObservationHakiV2 or _G.AutoEliteHunter or _G.AutoEliteHunterHop or _G.AutoTushitaSword or _G.AutoTushitaSword or  _G.FramBoss or _G.AutoFarmAllBoss or _G.AutoCavender or _G.AutoCavenderHop or _G.AutoRengoku) then
            RigC.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
            RigC.activeController.hitboxMagnitude = 50
            RigC.activeController.attacking = false
    		RigC.activeController.increment = 3
            game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
        end
    end)
end)
spawn(function()
        for i = 1,9999999999999999999999999999999999999999999999999999 do game:GetService('RunService').Heartbeat:wait()
            if _G.FastAttack2 then
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
        end
    end
end)

Tab11:CreateButton("RedeemAllCode",function()
function UseCode(Text)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
    end
    UseCode("UPD16")
    UseCode("1MLIKES_RESET")
    UseCode("2BILLION")
    UseCode("UPD15")
    UseCode("FUDD10")
    UseCode("BIGNEWS")
    UseCode("THEGREATACE")
    UseCode("SUB2GAMERROBOT_EXP1")
    UseCode("StrawHatMaine")
    UseCode("Sub2OfficialNoobie")
    UseCode("SUB2NOOBMASTER123")
    UseCode("Sub2Daigrock")
    UseCode("Axiore")
    UseCode("TantaiGaming")
    UseCode("STRAWHATMAINE")
end)
Tab11:CreateLabel("LockLevel")
Tab11:CreateLine()
_G.LockLevel = false
Tab11:CreateToggle("LockLevel",nil,function(value)
_G.LockLevel = value
		if _G.LockLeve == true then
while _G.LockLeve do wait()
    if MyLevel == _G.Levelclose then
        game.Players.LocalPlayer:Kick("LockLevel")
    end
end
end
end)
Tab11:CreateSlider("SelectLeveLock",1,2200,1,function(v)
    _G.Levelclose = v
end)
if _G.Levelclose == nil then
    _G.Levelclose = 2200
end

Tab1:CreateLabel("AutofarmBoss")
Tab1:CreateLine()

_G.SelectBoss = ""
local BossSelected=Tab1:CreateDropdown("SelectBoss",Bosslist,function(a)
_G.SelectBoss = a
end)
Tab1:CreateButton("RefeshBoss",function()
    BossSelected:Clear()
    local Boss = {}
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if string.find(v.Name, "Boss") then
            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
            else
                table.insert(Boss, v.Name)
                BossSelected:Add(v.Name)
            end
        end
    end
end)

Tab1:CreateToggle("AutoFarmBoss",nil,function(Value)
local args = {
        [1] = "AbandonQuest"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    _G.FramBoss = Value
end)
spawn(function()
    while wait() do
        if _G.FramBoss then
            AutoFramBoss()
        end
    end
end)

Tab11:CreateLine()
Tab11:CreateButton("buy Elf Hat",function()
    local args = {
        [1] = "Candies",
        [2] = "Buy",
        [3] = 1,
        [4] = 1
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Tab11:CreateButton("buy Santa Hat",function()
    local args = {
        [1] = "Candies",
        [2] = "Buy",
        [3] = 1,
        [4] = 2
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Tab11:CreateButton("buy Sleigh",function()
    local args = {
        [1] = "Candies",
        [2] = "Buy",
        [3] = 1,
        [4] = 3
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Tab11:CreateButton("buy 300F",function()
    local args = {
        [1] = "Candies",
        [2] = "Buy",
        [3] = 2,
        [4] = 1
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Tab11:CreateButton("buy 700F",function()
    local args = {
        [1] = "Candies",
        [2] = "Buy",
        [3] = 2,
        [4] = 2
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Tab11:CreateButton("buy EXP x2",function()
    local args = {
        [1] = "Candies",
        [2] = "Buy",
        [3] = 3,
        [4] = 1
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Tab11:CreateButton("Refund Stat",function()
    local args = {
        [1] = "Candies",
        [2] = "Buy",
        [3] = 3,
        [4] = 2
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Tab11:CreateButton("Reroll Race",function()
    local args = {
        [1] = "Candies",
        [2] = "Buy",
        [3] = 3,
        [4] = 3
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Tab2:CreateToggle("Melee",nil,function(value)
    _G.Melee = value
if _G.Melee == true then
while _G.Melee do wait()
local A_1 = "AddPoint"
local A_2 = "Melee"
local A_3 = PointStats
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)
end
end
end)
Tab2:CreateToggle("Defense",nil,function(value)
        _G.Defense = value
if _G.Defense == true then
while _G.Defense do wait()
local A_1 = "AddPoint"
local A_2 = "Defense"
local A_3 = PointStats
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)
end
end
end)
Tab2:CreateToggle("Sword",nil,function(value)
        _G.Sword = value
if _G.Sword == true then
while _G.Sword do wait()
local A_1 = "AddPoint"
local A_2 = "Sword"
local A_3 = PointStats
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)
end
end
end)
Tab2:CreateToggle("Gun",nil,function(value)
        _G.Gun = value
if _G.Gun == true then
while _G.Gun do wait()
local A_1 = "AddPoint"
local A_2 = "Gun"
local A_3 = PointStats
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)
end
end
end)
Tab2:CreateToggle("Fruit",nil,function(value)
        _G.Bloxfruit = value
if _G.Bloxfruit == true then
while _G.Bloxfruit do wait()
local A_1 = "AddPoint"
local A_2 = "Demon Fruit"
local A_3 = PointStats
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)
end
end
end)
Tab2:CreateSlider("PointStats",1,100,1,function(v)
    PointStats = v
end)

PlayerName = {}
        for i,v in pairs(game.Players:GetChildren()) do  
            table.insert(PlayerName ,v.Name)
        end
        SelectedKillPlayer = ""
        local Player = Tab7:CreateDropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
            SelectedKillPlayer = plys
            SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
        end)
Tab7:CreateButton("Refrsh Player",function()
            PlayerName = {}
            Player:Clear()
            for i,v in pairs(game.Players:GetChildren()) do  
                Player:Add(v.Name)
            end
        end)
Tab7:CreateToggle("Kill Player",false,function(bool)
            KillPlayer = bool
            KillPlayer = bool
            local args = {
                [1] = "EnablePvp"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            EquipWeapon(_G.SelectToolWeapo)				   
            if KillPlayer == false then
                game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
            end
            while KillPlayer do wait()
                totarget(game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            end
        end)
Tab7:CreateToggle("Auto KillPlayer",nil,function(value)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/MaxHub1/GOD-MAX-HUM/main/KillAura'))()
end)

Tab7:CreateButton("GodMode&bypass",function()
    spawn(function()
    pcall(function()
        while true do
            wait(.0)
            game.Players.LocalPlayer.Character.Humanoid.Health = 0.1
        end
    end)
end)

for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if v.ClassName == "Accessory" then
        v:Destroy()
    end
end

game.Players.LocalPlayer.Character.Shirt:Destroy()
    game.Players.LocalPlayer.Character.Pants:Destroy()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
            game.Players.LocalPlayer.Character.Animate.Disabled = true
end)

Tab7:CreateToggle("Aimbot ",nil,function(value)
	Aimbot = bool
end)
local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
mouse.Button1Down:Connect(function()
	if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(_G.PLAYERSELECT) then
		local args = {
			[1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position,
			[2] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart
		}
		game:GetService("Players").LocalPlayer.Character[_G.PLAYERSELECT].RemoteFunctionShoot:InvokeServer(unpack(args))
	end 
end)


if world1 then
Tab3:CreateDropdown("SelectIsland",{
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"
        },function(Value)
_G.TELEPORTISLAND = Value
end)
end
if world2 then
    Tab3:CreateDropdown("SelectIsland",{
            "cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
        },function(Value)
_G.TELEPORTISLAND = Value
end)
end
if world3 then
        Tab3:CreateDropdown("SelectIsland",{"Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island", "Floating Turtle"},function(Value)
_G.TELEPORTISLAND = Value
end)
end
Tab3:CreateButton("Tween",function()
if _G.TELEPORTISLAND == "WindMill" then
                totarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif _G.TELEPORTISLAND == "Marine" then
                totarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif _G.TELEPORTISLAND == "Middle Town" then
                totarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif _G.TELEPORTISLAND == "Jungle" then
                totarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif _G.TELEPORTISLAND == "Pirate Village" then
                totarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif _G.TELEPORTISLAND == "Desert" then
                totarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif _G.TELEPORTISLAND == "Snow Island" then
                totarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif _G.TELEPORTISLAND == "MarineFord" then
                totarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif _G.TELEPORTISLAND == "Colosseum" then
               totarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif _G.TELEPORTISLAND == "Sky Island 1" then
                totarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif _G.TELEPORTISLAND == "Sky Island 2" then
                function TP(P1,P2)
    local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 1000 then
        Speed = 350
    elseif Distance >= 1000 then
        Speed = 350
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P2}
    ):Play()
    wait(Distance/Speed)
end

TP(Vector3.new(-4644.587890625, 872.54241943359, -1742.3826904297), CFrame.new(-4644.58789, 872.542419, -1742.38269, -0.886984944, -2.65218905e-08, -0.46179834, -4.08027745e-09, 1, -4.95946892e-08, 0.46179834, -4.210548e-08, -0.886984944))
game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("requestEntrance", Vector3.new(-7894.6176757812, 5547.1416015625, -380.29119873))
        elseif _G.TELEPORTISLAND == "Sky Island 3" then
                totarget(CFrame.new(-7994.10546875, 5756.033203125, -1942.4979248047))
        elseif _G.TELEPORTISLAND == "Prison" then
               totarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif _G.TELEPORTISLAND == "Magma Village" then
                totarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif _G.TELEPORTISLAND == "Under Water Island" then
                totarget(CFrame.new(3876.6374511719, 5.3731470108032, -1896.9306640625))
        elseif _G.TELEPORTISLAND == "Fountain City" then
                totarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif _G.TELEPORTISLAND == "Shank Room" then
                totarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif _G.TELEPORTISLAND == "Mob Island" then
                totarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif _G.TELEPORTISLAND == "cafe" then
                totarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif _G.TELEPORTISLAND == "Frist Spot" then
                totarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif _G.TELEPORTISLAND == "Dark Area" then
                totarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif _G.TELEPORTISLAND == "Flamingo Mansion" then
                totarget(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
        elseif _G.TELEPORTISLAND == "Flamingo Room" then
                totarget(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
        elseif _G.TELEPORTISLAND == "Green Zone" then
               totarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif _G.TELEPORTISLAND == "Factory" then
                totarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif _G.TELEPORTISLAND == "Colossuim" then
               totarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif _G.TELEPORTISLAND == "Zombie Island" then
                totarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif _G.TELEPORTISLAND == "Two Snow Mountain" then
                totarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif _G.TELEPORTISLAND == "Punk Hazard" then
                totarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif _G.TELEPORTISLAND == "Cursed Ship" then
                totarget(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
        elseif _G.TELEPORTISLAND == "Ice Castle" then
                totarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif _G.TELEPORTISLAND == "Forgotten Island" then
                totarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif _G.TELEPORTISLAND == "Ussop Island" then
                totarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif _G.TELEPORTISLAND == "Mini Sky Island" then
                totarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
        elseif _G.TELEPORTISLAND == "Great Tree" then
                totarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif _G.TELEPORTISLAND == "Castle On The Sea" then
                totarget(CFrame.new(-5044.7612304688, 314.85876464844, -2995.3803710938))
        elseif _G.TELEPORTISLAND == "MiniSky" then
                totarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif _G.TELEPORTISLAND == "Port Town" then
                totarget(CFrame.new(-294.20208740234, 29.756063461304, 5395.4111328125))
        elseif _G.TELEPORTISLAND == "Hydra Island" then
                totarget(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
        elseif _G.TELEPORTISLAND == "Floating Turtle" then
                totarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif _G.TELEPORTISLAND == "Mansion" then
                totarget(CFrame.new(-12550.325195313, 337.51156616211, -7508.9936523438))
        end
end)
Tab3:CreateLabel("TeleportWorld")
Tab3:CreateLine()
Tab3:CreateButton("World1",function()
        local args = {
            [1] = "TravelMain"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Tab3:CreateButton("World2",function()
        local args = {
            [1] = "TravelDressrosa"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Tab3:CreateButton("World3",function()
    local args = {
            [1] = "TravelZou"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Tab33:CreateLabel("BuyCombat")
Tab33:CreateLine()

Tab33:CreateButton("Blackleg",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/pMV3eyqY"))()
end)
Tab33:CreateButton("Electro",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1mBbkVM1"))()
end)
Tab33:CreateButton("FishManKarate",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/hzZP2CvL"))()
end)
Tab33:CreateButton("DragonClaw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)
Tab33:CreateButton("SuperHuman",function()
   loadstring(game:HttpGet("https://pastebin.com/raw/954m9fS9"))() 
end)
Tab33:CreateButton("DeathStep",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/eWnPrWkv"))()
end)
Tab33:CreateButton("SharkManKarate",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4RQ7kCty"))()
end)
Tab33:CreateButton("ElectricClaw",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/CiyBtnBu"))()
end)
Tab33:CreateButton("DragonTalon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)

Tab3:CreateLabel("Abilities")
Tab3:CreateLine()
Tab3:CreateButton("SkyJump",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)
Tab3:CreateButton("BusoHaki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)
Tab3:CreateButton("Soru",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)
Tab3:CreateButton("KenHaki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)
Tab3:CreateToggle("AutoBuyAbilities",nil,function(t)
    Abilities = t
    while Abilities do wait(.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end
end)
Tab3:CreateLabel("Refund")
Tab3:CreateLine()
Tab3:CreateButton("Refund Stat [2500 F]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)
Tab3:CreateButton("Reroll Race[3000 F]",function()
    
end)
Tab33:CreateLabel("Sword")
Tab33:CreateLine()
Tab33:CreateButton("Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)
Tab33:CreateButton("Cutlass",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)
Tab33:CreateButton("Duel Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)
Tab33:CreateButton("Iron Mace",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)
Tab33:CreateButton("Pipe",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)
Tab33:CreateButton("Triple Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)
Tab33:CreateButton("Dual-Headed Blade",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)
Tab33:CreateButton("Bisento",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)
Tab33:CreateButton("Soul Cane",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)
Tab3:CreateLabel("Gun")
Tab3:CreateLine()
Tab3:CreateButton("Slingshot",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)
Tab3:CreateButton("Musket",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)
Tab3:CreateButton("Fintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)
Tab3:CreateButton("Refined Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)
Tab3:CreateButton("Cannon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)
Tab3:CreateButton("Kabucha",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)
Tab3:CreateLabel("More")
Tab3:CreateLine()
--game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
--game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
--game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
--game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
Tab3:CreateButton("OpenInventory",function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
end)
Tab3:CreateButton("OpenFruitInventory",function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)
Tab3:CreateButton("OpenFruitShop",function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
Tab3:CreateButton("OpenAwakeningList",function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
end)

dv:CreateDropdown("AutoBuy DevilFruit",{
    "Bomb-Bomb",
    "Spike-Spike",
    "Chop-Chop",
    "Spring-Spring",
	"Kilo-Kilo",
	"Spin-Spin",
	"Bird: Falcon",
    "Smoke-Smoke",
    "Flame-Flame",
    "Ice-Ice",
    "Sand-Sand",
    "Dark-Dark",
	"Revive-Revive",
	"Diamond-Diamond",
    "Light-Light",
	"Love-Love",
    "Rubber-Rubber",
    "Barrier-Barrier",
    "Magma-Magma",
	"Door-Door",
    "Quake-Quake",
    "Human-Human: Buddha",
    "String-String",
    "Bird-Bird: Phoenix",
    "Rumble-Rumble",
    "Paw-Paw",
    "Gravity-Gravity",
    "Dough-Dough",
	"Shadow-Shadow",
	"Venom-Venom",
    "Control-Control",
    "Dragon-Dragon"
    },function(ply)
    SelectDevil = ply
end)
dv:CreateToggle("Buy Devil Fruit Sinper",nil,function(vu)
    BuyFruitSinper = vu
end)
spawn(function()
    while wait(.1) do
        if BuyFruitSinper then
            local args = {
                [1] = "GetFruits"
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "PurchaseRawFruit",
                [2] = SelectDevil
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end 
    end
end)
dv:CreateToggle("Auto Store Fruit",nil,function(vu)
    AutoStoreFruit = vu
end)

spawn(function()
	pcall(function()
		while wait(.1) do
			if AutoStoreFruit then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike")
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Dark")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control")
                end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon")
				end
			end
		end
	end)
end)
dv:CreateToggle("Bring Fruit",nil,function(vu)
    BringFruit = vu
end)

spawn(function()
	pcall(function()
		while wait(.1) do
            if BringFruit then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        if v:IsA("Tool") then
                            v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
							wait(.2)
            				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
                        end
                    end
                end
            end
        end
	end)
end)
dv:CreateToggle("Auto Drop Fruit",nil,function(vu)
    Drop = vu
end)
spawn(function()
    while wait() do
        if Drop then
            pcall(function()
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        EquipWeapon(v.Name)
                        SelectFruit = v.Name
                        wait(.1)
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                        end
                        EquipWeapon(v.Name)
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                    end
                end
				for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        EquipWeapon(v.Name)
                        SelectFruit = v.Name
                        wait(.1)
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                        end
                        EquipWeapon(v.Name)
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                    end
                end
            end)
        end
    end
end)
dv:CreateLine()
dv:CreateButton("Buy Random Devil Fruit", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end)
dv:CreateToggle("Auto Buy Random Devil Fruit", false, function(v)
    DevilAutoBuy = v
end)
spawn(function()
    while wait(.1) do
        if DevilAutoBuy then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
        end
    end
end)

du:CreateToggle("Kill Aura", false, function(vu)
    Killaura = vu
end)
du:CreateToggle("Auto Awakenr", false, function(vu)
    AutoAwakener = vu
end)
du:CreateToggle("Auto Next Island", false, function(vu)
    NextIsland = vu
end)
du:CreateLine()
du:CreateToggle("Auto Raid", false, function(vu)
    _G.AutoRaid = vu
end)
du:CreateDropdown("Select Raid", {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha"}, function(vu)
    _G.SelectRaid = vu
end)
du:CreateToggle("Auto Buy Microchip", false, function(vu)
    AutoBuychip = vu
end)

spawn(function()
	pcall(function()
		while wait() do
			if AutoBuychip then
				if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectRaid)
					end
				end
			end
		end
	end)
end)

spawn(function()
	while wait(.1) do
		if _G.AutoRaid or RaidSuperhuman then
			pcall(function()
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					if AutoFullySuperhuman then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
							for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
								if not string.find(v.Name, "Fruit") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
								end
							end
						end
					end
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectRaid)
					end
					if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						game:GetService("StarterGui"):SetCore("SendNotification",
							{
								Title = "Auto Raid",
								Text = "Have Some People in Raid",
								Icon = "",
								Duration = 4
							}
						)
						wait(4)
					end
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
						if world2 then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						elseif world3 then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
				end
			end)
		end
	end
end)

spawn(function()
	pcall(function()
		while wait(.1) do
			if AutoAwakener then
				local args = {
					[1] = "Awakener",
					[2] = "Check"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "Awakener",
					[2] = "Awaken"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end
	end)
end)

spawn(function()
    while wait() do
        if Killaura or _G.AutoRaid or RaidSuperhuman then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait(.1)
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.Transparency = 0.8
                        until not Killaura or not _G.AutoRaid or not RaidSuperhuman or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)

spawn(function()
	pcall(function()
		while game:GetService("RunService").Heartbeat:wait() do
			if NextIsland or RaidSuperhuman or _G.AutoRaid then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
						totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(0,80,0))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
						totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(0,80,0))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
						totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(0,80,0))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
						totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(0,80,0))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						totarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(0,80,0))
					end
				elseif world2 then
					totarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
				elseif world3 then
					totarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
				end
			end
		end
	end)
end)

mi:CreateButton("Rejoin Server",function(value)
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)
mi:CreateButton("Hop Server",function(value)
    local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        local File =
            pcall(
            function()
                AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
            end
        )
        if not File then
            table.insert(AllIDs, actualHour)
            writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
        end
        function TPReturner()
            local Site
            if foundAnything == "" then
                Site =
                    game.HttpService:JSONDecode(
                    game:HttpGet(
                        "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
                    )
                )
            else
                Site =
                    game.HttpService:JSONDecode(
                    game:HttpGet(
                        "https://games.roblox.com/v1/games/" ..
                            PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
                    )
                )
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0
            for i, v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _, Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile =
                                    pcall(
                                    function()
                                        delfile("NotSameServers.json")
                                        AllIDs = {}
                                        table.insert(AllIDs, actualHour)
                                    end
                                )
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(
                            function()
                                writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
                                wait()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(
                                    PlaceID,
                                    ID,
                                    game.Players.LocalPlayer
                                )
                            end
                        )
                        wait(4)
                    end
                end
            end
        end

        function Teleport()
            while wait() do
                pcall(
                    function()
                        TPReturner()
                        if foundAnything ~= "" then
                            TPReturner()
                        end
                    end
                )
            end
        end

        Teleport()
end)
mi:CreateButton("Hop Lower Server",function(value)
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
mi:CreateButton("Join Pirates Team",function(value)
    local args = {
        [1] = "SetTeam",
        [2] = "Pirates"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
mi:CreateButton("Join Marines Team",function(value)
    local args = {
        [1] = "SetTeam",
        [2] = "Marines"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
mi:CreateButton("BringFruit",function()
    for i,fr in pairs(game:GetService("Workspace"):GetChildren()) do
        if fr:IsA ("Tool") then
            fr.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
    end)
mi:CreateToggle("Invisible",nil,function(value)
    _G.Invisible = value
    if _G.Invisible == true then
while _G.Invisible do wait()
    game.Players.LocalPlayer.Character.LowerTorso:Destroy()
end
end
if _G.Invisible == false then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)
mi:CreateToggle("WalkOnWater",true,function(vu)
    _G.Water = vu
end)
spawn(function()
    pcall(function()
        while game:GetService("RunService").Heartbeat:wait() do
            if _G.Water then
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                    if not game:GetService("Workspace"):FindFirstChild("Water") then
                        local Water = Instance.new("Part", game.Workspace)
                        Water.Name = "Water"
                        Water.Size = Vector3.new(10,0.5,10)
                        Water.Transparency = 1
                        Water.Anchored = true
                        game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    else
                        game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y >= 1 and game:GetService("Workspace"):FindFirstChild("Water") then
                    game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                end
            else
                if game:GetService("Workspace"):FindFirstChild("Water") then
                    game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                end
            end
        end
    end)
end)
Tab44:CreateToggle("AutoBringFruit",nil,function(value)
    _G.AUTOBRINGFRUIT = value
if _G.AUTOBRINGFRUIT == true then
while _G.AUTOBRINGFRUIT do wait()
        for i,fr in pairs(game:GetService("Workspace"):GetChildren()) do
					if fr:IsA ("Tool") then
		fr.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end
end
end
end
end)
Tab44:CreateToggle("FixGodModeBug",nil,function(f)
    _G.Fix = f
    if _G.Fix == true then
    while _G.Fix do wait()
        game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
    end
    end
end)
local LocalPlayer = game:GetService "Players".LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(
        function()
            if InfinitsEnergy then
                LocalPlayer.Character.Energy.Value = originalstam
            end
        end
    )
end
spawn(
    function()
        while wait(.1) do
            if InfinitsEnergy then
                wait(0.3)
                originalstam = LocalPlayer.Character.Energy.Value
                infinitestam()
            end
        end
    end
)
nododgecool = false
function NoDodgeCool()
    if nododgecool then
        for i, v in next, getgc() do
            if game.Players.LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not nododgecool
                        end
                    end
                end
            end
        end
    end
end
Tab44:CreateToggle("Dodge no Cooldown",nil,function(Value)
    nododgecool = Value
    NoDodgeCool()
end)

Tab44:CreateToggle("PART",nil,function(Value)
    _G.PART = true
end)

Tab44:CreateToggle("Inf Energy",nil,function(value)
    InfinitsEnergy = value
    originalstam = LocalPlayer.Character.Energy.Value
end)
Tab44:CreateButton("Tp to Flower",function(value)
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower1") or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower1") then
			TP(game:GetService("Workspace").Flower1.CFrame)
		end
		wait(1)
		if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower2") or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower2") then
			TP(game:GetService("Workspace").Flower2.CFrame)
		end
end)
Tab44:CreateButton("Clone Your Self",function(value)
    game.Players.LocalPlayer.Character.Archivable = true
game.Players.LocalPlayer.Character.Animate.Disabled = true
local clonec =  game.Players.LocalPlayer.Character:Clone()
clonec.Parent = workspace
clonec.Name = "CLONE"
clonec.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,2)
game.Players.LocalPlayer.Character = clonec
clonec.Animate.Disabled = false
end)
Tab44:CreateButton("FPSBOOST",function(value)
    if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
if hookfunction and setreadonly then
    local mt = getrawmetatable(game)
    local old = mt.__newindex
    setreadonly(mt, false)
    local sda
    sda = hookfunction(old, function(t, k, v)
        if k == "Material" then
            if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
        elseif k == "TopSurface" then v = "Smooth"
        elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
        elseif k == "WaterTransparency" then v = 1
        elseif k == "GlobalShadows" then v = false end
        return sda(t, k, v)
    end)
    setreadonly(mt, true)
end
local g = game
local w = g.Workspace
local l = g:GetService"Lighting"
local t = w:WaitForChild"Terrain"
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 1
l.GlobalShadows = false

function change(v)
    pcall(function()
        if v.Material ~= Enum.Material.Neon and v.Material ~= Enum.Material.Plastic and v.Material ~= Enum.Material.ForceField then
            pcall(function() v.Reflectance = 0 end)
            pcall(function() v.Material = Enum.Material.Plastic end)
            pcall(function() v.TopSurface = "Smooth" end)
        end
    end)
end

game.DescendantAdded:Connect(function(v)
    pcall(function()
        if v:IsA"Part" then change(v)
        elseif v:IsA"MeshPart" then change(v)
        elseif v:IsA"TrussPart" then change(v)
        elseif v:IsA"UnionOperation" then change(v)
        elseif v:IsA"CornerWedgePart" then change(v)
        elseif v:IsA"WedgePart" then change(v) end
    end)
end)
for i, v in pairs(game:GetDescendants()) do
    pcall(function()
        if v:IsA"Part" then change(v)
        elseif v:IsA"MeshPart" then change(v)
        elseif v:IsA"TrussPart" then change(v)
        elseif v:IsA"UnionOperation" then change(v)
        elseif v:IsA"CornerWedgePart" then change(v)
        elseif v:IsA"WedgePart" then change(v) end
    end)
end
end)

end
function loading()
local CustomLoadingScreen = Instance.new("ScreenGui")
local Props = Instance.new("Folder")
local Background = Instance.new("ImageLabel")
local LoadingProgress = Instance.new("ImageLabel")
local Name = Instance.new("TextLabel")
local Creator = Instance.new("TextLabel")

--Properties:

CustomLoadingScreen.Name = "CustomLoadingScreen"
CustomLoadingScreen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CustomLoadingScreen.ResetOnSpawn = false

Props.Name = "Props"
Props.Parent = CustomLoadingScreen

Background.Name = "Background"
Background.Parent = Props
Background.Active = true
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0, 0, -0.100000001, 0)
Background.Size = UDim2.new(1, 0, 1.10000002, 0)
Background.Image = "http://www.roblox.com/asset/?id=8458781462"
Background.ImageColor3 = Color3.fromRGB(50, 50, 50)
Background.SliceCenter = Rect.new(0, 0, 350, 350)

LoadingProgress.Name = "LoadingProgress"
LoadingProgress.Parent = Props
LoadingProgress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingProgress.BackgroundTransparency = 1.000
LoadingProgress.BorderSizePixel = 0
LoadingProgress.Position = UDim2.new(0.816649079, 0, 0.7408638, 0)
LoadingProgress.Size = UDim2.new(0, 125, 0, 125)
LoadingProgress.Image = "rbxassetid://1078907462"

Name.Name = "Name"
Name.Parent = Props
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0.0421496294, 0, 0.7408638, 0)
Name.Size = UDim2.new(0, 307, 0, 47)
Name.Font = Enum.Font.Arial
Name.Text = "REN Loading.."
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true

Creator.Name = "Creator"
Creator.Parent = Props
Creator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Creator.BackgroundTransparency = 1.000
Creator.Position = UDim2.new(0.0421496257, 0, 0.822259128, 0)
Creator.Size = UDim2.new(0, 272, 0, 26)
Creator.Font = Enum.Font.Arial
Creator.Text = "ScriptBy:Leak By Ren"
Creator.TextColor3 = Color3.fromRGB(255, 255, 255)
Creator.TextSize = 20.000
Creator.TextWrapped = true

-- Scripts:

local function QJTBLKB_fake_script() -- LoadingProgress.Script 
	local script = Instance.new('Script', LoadingProgress)

	while wait(.01) do
	script.Parent.Rotation = script.Parent.Rotation + 5
	end
end
coroutine.wrap(QJTBLKB_fake_script)()
local function SQFULN_fake_script() -- Name.Transparency 
	local script = Instance.new('Script', Name)

	wait(5)
	script.Parent.TextTransparency = 0.1
	wait(0.1)
	script.Parent.TextTransparency = 0.2
	wait(0.1)
	script.Parent.TextTransparency = 0.3
	wait(0.1)
	script.Parent.TextTransparency = 0.4
	wait(0.1)
	script.Parent.TextTransparency = 0.5
	wait(0.1)
	script.Parent.TextTransparency = 0.6
	wait(0.1)
	script.Parent.TextTransparency = 0.7
	wait(0.1)
	script.Parent.TextTransparency = 0.8
	wait(0.1)
	script.Parent.TextTransparency = 0.9
	wait(0.1)
	script.Parent.TextTransparency = 1
	-- for some reason the transparency for this wont work in the main script.
end
coroutine.wrap(SQFULN_fake_script)()
local function PWRCUH_fake_script() -- CustomLoadingScreen.Main 
	local script = Instance.new('Script', CustomLoadingScreen)

	wait(5)
	script.Parent.Props.Background.ImageTransparency = 0.1
	script.Parent.Props.LoadingProgress.ImageTransparency = 0.1
	script.Parent.Props.Creator.TextTransparency = 0.1
	wait(0.1)
	script.Parent.Props.Background.ImageTransparency = 0.2
	script.Parent.Props.LoadingProgress.ImageTransparency = 0.2
	script.Parent.Props.Creator.TextTransparency = 0.2
	wait(0.1)
	script.Parent.Props.Background.ImageTransparency = 0.3
	script.Parent.Props.LoadingProgress.ImageTransparency = 0.3
	script.Parent.Props.Creator.TextTransparency = 0.3
	wait(0.1)
	script.Parent.Props.Background.ImageTransparency = 0.4
	script.Parent.Props.LoadingProgress.ImageTransparency = 0.4
	script.Parent.Props.Creator.TextTransparency = 0.4
	wait(0.1)
	script.Parent.Props.Background.ImageTransparency = 0.5
	script.Parent.Props.LoadingProgress.ImageTransparency = 0.5
	script.Parent.Props.Creator.TextTransparency = 0.5
	wait(0.1)
	script.Parent.Props.Background.ImageTransparency = 0.6
	script.Parent.Props.LoadingProgress.ImageTransparency = 0.6
	script.Parent.Props.Creator.TextTransparency = 0.6
	wait(0.1)
	script.Parent.Props.Background.ImageTransparency = 0.7
	script.Parent.Props.LoadingProgress.ImageTransparency = 0.7
	script.Parent.Props.Creator.TextTransparency = 0.7
	wait(0.1)
	script.Parent.Props.Background.ImageTransparency = 0.8
	script.Parent.Props.LoadingProgress.ImageTransparency = 0.8
	script.Parent.Props.Creator.TextTransparency = 0.8
	wait(0.1)
	script.Parent.Props.Background.ImageTransparency = 0.9
	script.Parent.Props.LoadingProgress.ImageTransparency = 0.9
	script.Parent.Props.Creator.TextTransparency = 0.9
	wait(0.1)
	script.Parent.Props.Background.ImageTransparency = 1
	script.Parent.Props.LoadingProgress.ImageTransparency = 1
	script.Parent.Props.Creator.TextTransparency = 1
end
coroutine.wrap(PWRCUH_fake_script)()
wait(7)
game.Players.LocalPlayer.PlayerGui.CustomLoadingScreen:Destroy()
loadsc()
end
loading()