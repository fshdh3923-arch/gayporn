-- Création d'une interface de prank en local
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local Sound = Instance.new("Sound")

-- Configuration du ScreenGui
ScreenGui.Name = "RagePrank"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Configuration du texte
TextLabel.Parent = ScreenGui
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = "💀 T'ES NUL 💀"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextStrokeTransparency = 0
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.Arcade

-- Ajout d'un son troll
Sound.Parent = ScreenGui
Sound.SoundId = "rbxassetid://1843522178" -- Bruit de clown
Sound.Volume = 10
Sound.Looped = true
Sound:Play()

-- Animation clignotante gênante
while true do
    TextLabel.TextColor3 = Color3.fromRGB(math.random(100,255), 0, 0)
    TextLabel.Rotation = math.random(-10,10)
    TextLabel.Position = UDim2.new(0, math.random(-10,10), 0, math.random(-10,10))
    wait(0.08)
end
