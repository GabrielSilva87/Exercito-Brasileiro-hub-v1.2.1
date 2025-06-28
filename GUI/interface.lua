-- GUI para Exército Brasileiro Hub v1.2.1

local ArmyHub = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Header = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TitleBackground = Instance.new("ImageLabel") -- agora logo à esquerda
local CloseButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton")
local Tabs = Instance.new("Frame")
local TeleportTab = Instance.new("TextButton")
local CreditsTab = Instance.new("TextButton")
local AutoTab = Instance.new("TextButton")
local ContentFrame = Instance.new("Frame")
local TeleportContent = Instance.new("Frame")
local AllianceShop = Instance.new("TextButton")
local CreditsContent = Instance.new("Frame")
local Dev1 = Instance.new("TextLabel")
local Dev2 = Instance.new("TextLabel")
local AutoContent = Instance.new("Frame")
local AutoTorreButton = Instance.new("TextButton")
local AutoJJsButton = Instance.new("TextButton")
local LogoButton = Instance.new("ImageButton") -- botão para restaurar GUI

-- Estilo de bordas arredondadas e gradiente
local function aplicarEstilo(elemento)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = elemento

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 35)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 60, 60))
    }
    gradient.Rotation = 90
    gradient.Parent = elemento
end

-- GUI principal
ArmyHub.Name = "ArmyHub"
ArmyHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ArmyHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Botão de logo para restaurar GUI
LogoButton.Name = "LogoButton"
LogoButton.Parent = ArmyHub
LogoButton.Image = "rbxassetid://124644711731509"
LogoButton.BackgroundTransparency = 1
LogoButton.Position = UDim2.new(0, 10, 0, 10)
LogoButton.Size = UDim2.new(0, 40, 0, 40)
LogoButton.Visible = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = ArmyHub
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 300, 0, 320)
aplicarEstilo(MainFrame)

Header.Name = "Header"
Header.Parent = MainFrame
Header.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Header.BorderSizePixel = 0
Header.Size = UDim2.new(1, 0, 0, 30)
aplicarEstilo(Header)

MainFrame.Active = true
Header.Active = true
MainFrame.Draggable = true

-- Logo à esquerda do título
TitleBackground.Name = "TitleBackground"
TitleBackground.Parent = Header
TitleBackground.BackgroundTransparency = 1
TitleBackground.Position = UDim2.new(0, 5, 0.15, 0)
TitleBackground.Size = UDim2.new(0, 20, 0, 20)
TitleBackground.Image = "rbxassetid://124644711731509"
TitleBackground.ImageTransparency = 0
TitleBackground.ScaleType = Enum.ScaleType.Fit
TitleBackground.ZIndex = 2

Title.Name = "Title"
Title.Parent = Header
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 30, 0, 0)
Title.Size = UDim2.new(1, -35, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "Exército Brasileiro Hub v1.2.1"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.0
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 2

CloseButton.Name = "CloseButton"
CloseButton.Parent = Header
CloseButton.BackgroundTransparency = 1
CloseButton.Position = UDim2.new(0.9, 0, 0, 0)
CloseButton.Size = UDim2.new(0.1, 0, 1, 0)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14.0

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = Header
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Position = UDim2.new(0.8, 0, 0, 0)
MinimizeButton.Size = UDim2.new(0.1, 0, 1, 0)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "_"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 14.0

Tabs.Name = "Tabs"
Tabs.Parent = MainFrame
Tabs.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Tabs.BorderSizePixel = 0
Tabs.Position = UDim2.new(0, 0, 0, 30)
Tabs.Size = UDim2.new(1, 0, 0, 30)
aplicarEstilo(Tabs)

TeleportTab.Name = "TeleportTab"
TeleportTab.Parent = Tabs
TeleportTab.BackgroundTransparency = 1
TeleportTab.Size = UDim2.new(0.333, 0, 1, 0)
TeleportTab.Font = Enum.Font.GothamBold
TeleportTab.Text = "Teleporte"
TeleportTab.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportTab.TextSize = 14.0

CreditsTab.Name = "CreditsTab"
CreditsTab.Parent = Tabs
CreditsTab.BackgroundTransparency = 1
CreditsTab.Position = UDim2.new(0.333, 0, 0, 0)
CreditsTab.Size = UDim2.new(0.333, 0, 1, 0)
CreditsTab.Font = Enum.Font.GothamBold
CreditsTab.Text = "Créditos"
CreditsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsTab.TextSize = 14.0

AutoTab.Name = "AutoTab"
AutoTab.Parent = Tabs
AutoTab.BackgroundTransparency = 1
AutoTab.Position = UDim2.new(0.666, 0, 0, 0)
AutoTab.Size = UDim2.new(0.333, 0, 1, 0)
AutoTab.Font = Enum.Font.GothamBold
AutoTab.Text = "Automação"
AutoTab.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoTab.TextSize = 14.0

ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ContentFrame.BorderSizePixel = 0
ContentFrame.Position = UDim2.new(0, 0, 0, 60)
ContentFrame.Size = UDim2.new(1, 0, 1, -60)
aplicarEstilo(ContentFrame)

TeleportContent.Name = "TeleportContent"
TeleportContent.Parent = ContentFrame
TeleportContent.BackgroundTransparency = 1
TeleportContent.Size = UDim2.new(1, 0, 1, 0)
TeleportContent.Visible = true

AllianceShop.Name = "AllianceShop"
AllianceShop.Parent = TeleportContent
AllianceShop.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
AllianceShop.BorderSizePixel = 0
AllianceShop.Position = UDim2.new(0.1, 0, 0.1, 0)
AllianceShop.Size = UDim2.new(0.8, 0, 0.2, 0)
AllianceShop.Font = Enum.Font.GothamBold
AllianceShop.Text = "Loja da Aliança"
AllianceShop.TextColor3 = Color3.fromRGB(255, 255, 255)
AllianceShop.TextSize = 14.0
aplicarEstilo(AllianceShop)

CreditsContent.Name = "CreditsContent"
CreditsContent.Parent = ContentFrame
CreditsContent.BackgroundTransparency = 1
CreditsContent.Size = UDim2.new(1, 0, 1, 0)
CreditsContent.Visible = false

Dev1.Name = "Dev1"
Dev1.Parent = CreditsContent
Dev1.BackgroundTransparency = 1
Dev1.Position = UDim2.new(0.1, 0, 0.2, 0)
Dev1.Size = UDim2.new(0.8, 0, 0.1, 0)
Dev1.Font = Enum.Font.GothamBold
Dev1.Text = "- Dev yurizindo139"
Dev1.TextSize = 18.0
Dev1.TextXAlignment = Enum.TextXAlignment.Left

Dev2.Name = "Dev2"
Dev2.Parent = CreditsContent
Dev2.BackgroundTransparency = 1
Dev2.Position = UDim2.new(0.1, 0, 0.3, 0)
Dev2.Size = UDim2.new(0.8, 0, 0.1, 0)
Dev2.Font = Enum.Font.GothamBold
Dev2.Text = "- Dev GabrielBStar2"
Dev2.TextSize = 18.0
Dev2.TextXAlignment = Enum.TextXAlignment.Left

AutoContent.Name = "AutoContent"
AutoContent.Parent = ContentFrame
AutoContent.BackgroundTransparency = 1
AutoContent.Size = UDim2.new(1, 0, 1, 0)
AutoContent.Visible = false

AutoTorreButton.Name = "AutoTorreButton"
AutoTorreButton.Parent = AutoContent
AutoTorreButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
AutoTorreButton.BorderSizePixel = 0
AutoTorreButton.Position = UDim2.new(0.1, 0, 0.1, 0)
AutoTorreButton.Size = UDim2.new(0.8, 0, 0.2, 0)
AutoTorreButton.Font = Enum.Font.GothamBold
AutoTorreButton.Text = "Auto Torre v3"
AutoTorreButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoTorreButton.TextSize = 14.0
aplicarEstilo(AutoTorreButton)

AutoJJsButton.Name = "AutoJJsButton"
AutoJJsButton.Parent = AutoContent
AutoJJsButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
AutoJJsButton.BorderSizePixel = 0
AutoJJsButton.Position = UDim2.new(0.1, 0, 0.35, 0)
AutoJJsButton.Size = UDim2.new(0.8, 0, 0.2, 0)
AutoJJsButton.Font = Enum.Font.GothamBold
AutoJJsButton.Text = "Auto JJs"
AutoJJsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoJJsButton.TextSize = 14.0
aplicarEstilo(AutoJJsButton)

-- Ações dos botões
AutoTorreButton.Activated:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GabrielSilva87/Exercito-Brasileiro-hub-v1.2.1/refs/heads/main/GUI/Auto%20Torre%20v3/movim.lua"))()
end)

AutoJJsButton.Activated:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zv-yz/AutoJJs/main/Main.lua"))()
end)

AllianceShop.Activated:Connect(function()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.CFrame = CFrame.new(Vector3.new(-922.1209, 49.0118, 578.9318))
        end
    end
end)

-- Alternar abas
local function toggleTab(selectedTab)
    TeleportTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    CreditsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    AutoTab.TextColor3 = Color3.fromRGB(255, 255, 255)

    TeleportContent.Visible = false
    CreditsContent.Visible = false
    AutoContent.Visible = false

    selectedTab.TextColor3 = Color3.fromRGB(0, 100, 0)
    if selectedTab == TeleportTab then
        TeleportContent.Visible = true
    elseif selectedTab == CreditsTab then
        CreditsContent.Visible = true
    elseif selectedTab == AutoTab then
        AutoContent.Visible = true
    end
end

TeleportTab.Activated:Connect(function()
    toggleTab(TeleportTab)
end)

CreditsTab.Activated:Connect(function()
    toggleTab(CreditsTab)
end)

AutoTab.Activated:Connect(function()
    toggleTab(AutoTab)
end)

-- Botão fechar
CloseButton.Activated:Connect(function()
    ArmyHub:Destroy()
end)

-- Botão minimizar: esconde o MainFrame e mostra o logo
MinimizeButton.Activated:Connect(function()
    MainFrame.Visible = false
    LogoButton.Visible = true
end)

-- Botão do logo para restaurar a GUI
LogoButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
    LogoButton.Visible = false
end)

-- RGB animado nos créditos
task.spawn(function()
    while true do
        local t = tick()
        local r = math.clamp(math.sin(t)*127 + 128, 0, 255)/255
        local g = math.clamp(math.sin(t + 2)*127 + 128, 0, 255)/255
        local b = math.clamp(math.sin(t + 4)*127 + 128, 0, 255)/255
        local color = Color3.new(r, g, b)
        Dev1.TextColor3 = color
        Dev2.TextColor3 = color
        task.wait(0.03)
    end
end)