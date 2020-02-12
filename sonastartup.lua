if(is_userdata_reserved(game)) then
-- Gui to Lua
-- Version: 3

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local TextLabel3 = Instance.new("TextLabel")
local Frame2 = Instance.new("Frame")
local TextLabel7 = Instance.new("TextLabel")
local TextLabel2_2 = Instance.new("TextLabel")
local TextLabel3_2 = Instance.new("TextLabel")
local TextLabel6 = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.445555359, 0, 0.442876816, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, -3.7252903e-09, 0)
TextLabel.Size = UDim2.new(0, 73, 0, 40)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "      !"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 32
TextLabel.TextTransparency = 1

TextLabel2.Name = "TextLabel2"
TextLabel2.Parent = Frame
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 1
TextLabel2.BorderSizePixel = 0
TextLabel2.Position = UDim2.new(0.289999992, 0, 0, 0)
TextLabel2.Size = UDim2.new(0, 71, 0, 40)
TextLabel2.Font = Enum.Font.SourceSansSemibold
TextLabel2.Text = ""
TextLabel2.TextColor3 = Color3.new(0, 0, 0)
TextLabel2.TextSize = 32
TextLabel2.TextTransparency = 1

TextLabel3.Name = "TextLabel3"
TextLabel3.Parent = Frame
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.BorderSizePixel = 0
TextLabel3.Position = UDim2.new(0.129999995, 0, 0.299999982, 0)
TextLabel3.Size = UDim2.new(0, 73, 0, 40)
TextLabel3.Font = Enum.Font.SourceSansSemibold
TextLabel3.Text = RandomString(6)
TextLabel3.TextColor3 = Color3.new(1, 1, 1)
TextLabel3.TextSize = 23
TextLabel3.TextTransparency = 1

Frame2.Name = "Frame2"
Frame2.Parent = ScreenGui
Frame2.BackgroundColor3 = Color3.new(1, 1, 1)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(0, 0, 0.644417465, 0)
Frame2.Size = UDim2.new(0, 371, 0, 207)

TextLabel7.Name = "TextLabel7"
TextLabel7.Parent = Frame2
TextLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Position = UDim2.new(-0.0404312871, 0, 1.22705317, 0)
TextLabel7.Size = UDim2.new(0, 193, 0, 42)
TextLabel7.Font = Enum.Font.SourceSansSemibold
TextLabel7.Text = "Permission: not set"
TextLabel7.TextColor3 = Color3.new(1, 1, 1)
TextLabel7.TextSize = 22
TextLabel7.TextTransparency = 1

TextLabel2_2.Name = "TextLabel2"
TextLabel2_2.Parent = Frame2
TextLabel2_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2_2.BackgroundTransparency = 1
TextLabel2_2.Position = UDim2.new(-0.0808625519, 0, 1.27536261, 0)
TextLabel2_2.Size = UDim2.new(0, 164, 0, 55)
TextLabel2_2.Font = Enum.Font.SourceSansSemibold
TextLabel2_2.Text = "Name: Sona"
TextLabel2_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel2_2.TextSize = 22
TextLabel2_2.TextTransparency = 1

TextLabel3_2.Name = "TextLabel3"
TextLabel3_2.Parent = Frame2
TextLabel3_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3_2.BackgroundTransparency = 1
TextLabel3_2.Position = UDim2.new(-0.0377359726, 0, 1.50724649, 0)
TextLabel3_2.Size = UDim2.new(0, 183, 0, 28)
TextLabel3_2.Font = Enum.Font.SourceSansSemibold
TextLabel3_2.Text = "Made by laser man"
TextLabel3_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel3_2.TextSize = 22
TextLabel3_2.TextTransparency = 1

TextLabel6.Name = "TextLabel6"
TextLabel6.Parent = Frame2
TextLabel6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Position = UDim2.new(0, 0, 1.57970989, 0)
TextLabel6.Size = UDim2.new(0, 145, 0, 33)
TextLabel6.Font = Enum.Font.SourceSansSemibold
TextLabel6.Text = "Running Wrapper"
TextLabel6.TextColor3 = Color3.new(1, 1, 1)
TextLabel6.TextSize = 22
TextLabel6.TextTransparency = 1

TextLabel_2.Parent = Frame2
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.0189999882, 0, 1.43577302, 0)
TextLabel_2.Size = UDim2.new(0, 183, 0, 24)
TextLabel_2.Font = Enum.Font.SourceSansSemibold
TextLabel_2.Text = "Userdata reserved:"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 22
TextLabel_2.TextTransparency = 1

-- Scripts:

local function FELQ_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local object = script.Parent
	object.AnchorPoint = Vector2.new(0.5, 0.5)
	object.Position = UDim2.new(0.5, 0, 0.5, 0)
	object:TweenSize(UDim2.new(0, 100, 0, 100))
	wait(1)
	script.Parent.Parent.Frame.TextLabel:TweenPosition(UDim2.new(0, 0,0.16, 0))
	script.Parent.Parent.Frame.TextLabel2:TweenPosition(UDim2.new(0.29, 0,0.16, 0))
	script.Parent.Parent.Frame.TextLabel3:TweenPosition(UDim2.new(0.13, 0,0.45, 0))
	num = 12
	for i = 1, num do
		script.Parent.Parent.Frame.TextLabel2.TextTransparency = 1 - i/num/1
		script.Parent.Parent.Frame.TextLabel.TextTransparency = 1 - i/num/1
		script.Parent.Parent.Frame.TextLabel3.TextTransparency = 1 - i/num/1
		wait()
	end 
	wait(1.2)
	script.Parent.Parent.Frame.Visible = false
end
coroutine.wrap(FELQ_fake_script)()
end
