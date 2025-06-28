local TweenService = game:GetService("TweenService")

local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "UppGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local backgroundFrame = Instance.new("Frame")
backgroundFrame.Name = "BackgroundFrame"
backgroundFrame.Size = UDim2.new(0, 200, 0, 150)
backgroundFrame.Position = UDim2.new(0.5, -100, 0.5, -75)
backgroundFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
backgroundFrame.BackgroundTransparency = 0.2
backgroundFrame.BorderSizePixel = 0
backgroundFrame.Parent = screenGui
backgroundFrame.Active = true
backgroundFrame.Draggable = true -- Tornando o frame arrastável

local backgroundCorner = Instance.new("UICorner")
backgroundCorner.CornerRadius = UDim.new(0, 16)
backgroundCorner.Parent = backgroundFrame

local button = Instance.new("TextButton")
button.Name = "SubirButton"
button.Size = UDim2.new(0, 120, 0, 50)
button.Position = UDim2.new(0.5, -60, 0.2, 0)
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "Subir"
button.Font = Enum.Font.GothamBold
button.TextSize = 22
button.Parent = backgroundFrame
button.AutoButtonColor = false

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 12)
buttonCorner.Parent = button

local gradient = Instance.new("UIGradient")
gradient.Rotation = 0
gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 0, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 0)),
	ColorSequenceKeypoint.new(1.0, Color3.fromRGB(0, 0, 255))
}
gradient.Parent = button

local function animateGradient()
	while true do
		for rotation = 0, 360, 1 do
			gradient.Rotation = rotation
			wait(0.03)
		end
	end
end

spawn(animateGradient)

-- Texto 1
local textLabel = Instance.new("TextLabel")
textLabel.Name = "CreditYuri"
textLabel.Text = "Feito por: yurizando139 (DEV)"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.Size = UDim2.new(1, 0, 0, 24)
textLabel.Position = UDim2.new(0, 0, 0.75, 0)
textLabel.BackgroundTransparency = 1
textLabel.Font = Enum.Font.SourceSans
textLabel.TextSize = 18
textLabel.Parent = backgroundFrame

-- Texto 2 (Gabriel)
local textLabel2 = Instance.new("TextLabel")
textLabel2.Name = "CreditGabriel"
textLabel2.Text = "GabrielBStar2 👑 (GIT)"
textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel2.Size = UDim2.new(1, 0, 0, 24)
textLabel2.Position = UDim2.new(0, 0, 0.85, 0)
textLabel2.BackgroundTransparency = 1
textLabel2.Font = Enum.Font.SourceSans
textLabel2.TextSize = 18
textLabel2.Parent = backgroundFrame

local xButton = Instance.new("TextButton")
xButton.Name = "CloseButton"
xButton.Text = "X"
xButton.Size = UDim2.new(0, 24, 0, 24)
xButton.Position = UDim2.new(1, -28, 0, 4)
xButton.AnchorPoint = Vector2.new(0, 0)
xButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
xButton.TextColor3 = Color3.fromRGB(255, 255, 255)
xButton.Font = Enum.Font.GothamBold
xButton.TextSize = 16
xButton.Parent = backgroundFrame

local xCorner = Instance.new("UICorner")
xCorner.CornerRadius = UDim.new(1, 0)
xCorner.Parent = xButton

xButton.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)

local clickCount = 0
local function changeColorRGBOnText()
	local colors = {
		Color3.fromRGB(255, 0, 0),
		Color3.fromRGB(0, 255, 0),
		Color3.fromRGB(0, 0, 255),
		Color3.fromRGB(255, 255, 0),
		Color3.fromRGB(255, 0, 255),
		Color3.fromRGB(0, 255, 255)
	}
	local index = 1
	local cycles = 0
	local totalCycles = 3

	while cycles < totalCycles do
		textLabel.TextColor3 = colors[index]
		textLabel2.TextColor3 = colors[index]
		index += 1
		if index > #colors then
			index = 1
			cycles += 1
		end
		wait(0.1)
	end

	textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
end

textLabel.MouseEnter:Connect(function()
	clickCount += 1
	if clickCount == 10 then
		spawn(changeColorRGBOnText)
		clickCount = 0
	end
end)

local function calculatePosition(direction, distance)
	local character = player.Character or player.CharacterAdded:Wait()
	repeat wait() until character:FindFirstChild("HumanoidRootPart")
	local rootPart = character:WaitForChild("HumanoidRootPart")
	local directionVector = Vector3.new(1, 0, 0) * direction * distance
	return rootPart.Position + directionVector
end

local function moveTo(position)
	local humanoid = player.Character:WaitForChild("Humanoid")
	humanoid:MoveTo(position)
	humanoid.MoveToFinished:Wait()
end

local function jump()
	local humanoid = player.Character:WaitForChild("Humanoid")
	humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end

button.MouseButton1Click:Connect(function()
	button.Text = "Subindo..."

	local leftDistance = 2
	local rightDistance = 3

	local leftPosition = calculatePosition(-1.8, leftDistance)
	moveTo(leftPosition)

	jump()

	local rightPosition = calculatePosition(2, rightDistance)
	moveTo(rightPosition)

	button.Text = "Subir"
end)