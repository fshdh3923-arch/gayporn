--[🌵] My Singing Brainrot

--https://www.roblox.com/es/games/89343390950953/My-Singing-Brainrot

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- Main GUI
local gui = Instance.new("ScreenGui", PlayerGui)
gui.Name = "AllRemotesGui"
gui.ResetOnSpawn = false

-- Shadow effect
local frameShadow = Instance.new("Frame", gui)
frameShadow.Size = UDim2.new(0, 206, 0, 126)
frameShadow.Position = UDim2.new(0.05, -3, 0.3, 3)
frameShadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frameShadow.BackgroundTransparency = 0.8
frameShadow.BorderSizePixel = 0

local shadowCorner = Instance.new("UICorner", frameShadow)
shadowCorner.CornerRadius = UDim.new(0, 15)

-- Main frame
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 200, 0, 120)
frame.Position = UDim2.new(0.05, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
frame.BorderSizePixel = 0
frame.Active = true

local frameCorner = Instance.new("UICorner", frame)
frameCorner.CornerRadius = UDim.new(0, 12)

-- Title bar
local titleBar = Instance.new("Frame", frame)
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
titleBar.BorderSizePixel = 0

local titleCorner = Instance.new("UICorner", titleBar)
titleCorner.CornerRadius = UDim.new(0, 12)

-- Fix title bar bottom corners
local titleBarFix = Instance.new("Frame", titleBar)
titleBarFix.Size = UDim2.new(1, 0, 0, 12)
titleBarFix.Position = UDim2.new(0, 0, 1, -12)
titleBarFix.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
titleBarFix.BorderSizePixel = 0

-- macOS style close button (red circle)
local closeBtn = Instance.new("TextButton", titleBar)
closeBtn.Size = UDim2.new(0, 18, 0, 18)
closeBtn.Position = UDim2.new(1, -28, 0.5, -9)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 95, 87)
closeBtn.Text = ""
closeBtn.BorderSizePixel = 0

local closeBtnCorner = Instance.new("UICorner", closeBtn)
closeBtnCorner.CornerRadius = UDim.new(0.5, 0)

-- Hover effect for close button
closeBtn.MouseEnter:Connect(function()
	TweenService:Create(closeBtn, TweenInfo.new(0.1), {
		BackgroundColor3 = Color3.fromRGB(220, 50, 47)
	}):Play()
end)

closeBtn.MouseLeave:Connect(function()
	TweenService:Create(closeBtn, TweenInfo.new(0.1), {
		BackgroundColor3 = Color3.fromRGB(255, 95, 87)
	}):Play()
end)

-- Window title
local titleLabel = Instance.new("TextLabel", titleBar)
titleLabel.Size = UDim2.new(1, -60, 1, 0)
titleLabel.Position = UDim2.new(0, 30, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "All Remotes"
titleLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
titleLabel.Font = Enum.Font.Gotham
titleLabel.TextSize = 12
titleLabel.TextXAlignment = Enum.TextXAlignment.Center

-- Creator label
local discord = Instance.new("TextLabel", frame)
discord.Position = UDim2.new(0, 10, 0, 35)
discord.Size = UDim2.new(1, -20, 0, 20)
discord.BackgroundTransparency = 1
discord.Text = "by cilo"
discord.TextColor3 = Color3.fromRGB(200, 200, 200)
discord.Font = Enum.Font.Gotham
discord.TextSize = 11
discord.TextXAlignment = Enum.TextXAlignment.Center

-- Button holder
local buttonHolder = Instance.new("Frame", frame)
buttonHolder.Size = UDim2.new(1, -20, 0, 50)
buttonHolder.Position = UDim2.new(0, 10, 0, 60)
buttonHolder.BackgroundTransparency = 1

local layout = Instance.new("UIListLayout", buttonHolder)
layout.Padding = UDim.new(0, 8)
layout.FillDirection = Enum.FillDirection.Vertical
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.SortOrder = Enum.SortOrder.LayoutOrder

-- Close button functionality
closeBtn.MouseButton1Click:Connect(function()
	local closeTween = TweenService:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
		Size = UDim2.new(0, 0, 0, 0),
		Position = UDim2.new(0.05, 100, 0.3, 60)
	})
	
	local shadowTween = TweenService:Create(frameShadow, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
		Size = UDim2.new(0, 0, 0, 0),
		Position = UDim2.new(0.05, 100, 0.3, 60),
		BackgroundTransparency = 1
	})
	
	closeTween:Play()
	shadowTween:Play()
	
	closeTween.Completed:Connect(function()
		gui:Destroy()
	end)
end)

-- Random value function
local function randomValue()
	local values = {
		"TestString",
		math.random(1, 1000),
		player,
		true,
		{ key = "value" },
		Vector3.new(math.random(), math.random(), math.random()),
		CFrame.new(math.random(), math.random(), math.random())
	}
	return values[math.random(1, #values)]
end

-- Handle remotes function
local function handleRemotes(container)
	for _, obj in pairs(container:GetDescendants()) do
		if obj:IsA("RemoteEvent") then
			pcall(function()
				obj:FireServer(randomValue())
				warn("FireServer executed on: " .. obj:GetFullName())
			end)
		elseif obj:IsA("RemoteFunction") then
			pcall(function()
				obj:InvokeServer(randomValue())
				warn("InvokeServer executed on: " .. obj:GetFullName())
			end)
		end
	end
end

-- Main button
local btn = Instance.new("TextButton")
btn.Name = "RemoteButton_Gamepass"
btn.Size = UDim2.new(1, 0, 0, 35)
btn.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
btn.Text = "Gamepass & More"
btn.TextColor3 = Color3.new(1, 1, 1)
btn.Font = Enum.Font.GothamBold
btn.TextSize = 14
btn.BorderSizePixel = 0

local btnCorner = Instance.new("UICorner", btn)
btnCorner.CornerRadius = UDim.new(0, 8)

-- Button gradient
local btnGradient = Instance.new("UIGradient", btn)
btnGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 122, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 150, 255))
}
btnGradient.Rotation = 45

-- Button hover effect
btn.MouseEnter:Connect(function()
	TweenService:Create(btn, TweenInfo.new(0.2), {
		Size = btn.Size + UDim2.new(0, 2, 0, 2)
	}):Play()
end)

btn.MouseLeave:Connect(function()
	TweenService:Create(btn, TweenInfo.new(0.2), {
		Size = btn.Size - UDim2.new(0, 2, 0, 2)
	}):Play()
end)

btn.Parent = buttonHolder

-- Button functionality
btn.MouseButton1Click:Connect(function()
	local success, err = pcall(function()
		handleRemotes(ReplicatedStorage:WaitForChild("Communication"):WaitForChild("Events"))
		handleRemotes(ReplicatedStorage:WaitForChild("Communication"):WaitForChild("Functions"))
		handleRemotes(ReplicatedStorage:WaitForChild("conch_networking"))
	end)
	if not success then
		warn("Error executing remotes:", err)
	end
end)

-- Dragging functionality
local dragging, dragStart, startPos

local function update(input)
	local delta = input.Position - dragStart
	frame.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
	frameShadow.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X - 3,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y + 3
	)
end

titleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		update(input)
	end
end)
