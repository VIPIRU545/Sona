if(is_userdata_reserved(game)) then
-- Gui to Lua
-- Version: 3

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextLabel3 = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 1
Frame.Position = UDim2.new(0.445555389, 0, 0.442876786, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.new(0.0980392, 0.0941176, 0.0980392)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)

TextLabel3.Name = "TextLabel3"
TextLabel3.Parent = Frame
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.BorderSizePixel = 0
TextLabel3.Position = UDim2.new(0.129999995, 0, 0.299999982, 0)
TextLabel3.Size = UDim2.new(0, 73, 0, 40)
TextLabel3.Font = Enum.Font.SourceSansBold
TextLabel3.Text = "a2Cx4K"
TextLabel3.TextColor3 = Color3.new(1, 1, 1)
TextLabel3.TextSize = 23
TextLabel3.TextTransparency = 1

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

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, -3.7252903e-09, 0)
TextLabel.Size = UDim2.new(0, 73, 0, 40)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "      !"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 32
TextLabel.TextTransparency = 1

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.200000003, 0, 0.189999998, 0)
ImageLabel.Size = UDim2.new(0, 59, 0, 62)
ImageLabel.Image = "http://www.roblox.com/asset/?id=4688914915"
ImageLabel.ImageTransparency = 1

-- Scripts:

local function ANTV_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local object = script.Parent
	object.AnchorPoint = Vector2.new(0.5, 0.5)
	object.Position = UDim2.new(0.5, 0, 0.5, 0)
	object:TweenSize(UDim2.new(0, 100, 0, 100))
	wait(1)
	num = 12
	for i = 1, num do
			script.Parent.Parent.Frame.ImageLabel.ImageTransparency = 1 - i/num/1
		wait()
	end 
	wait(1.1)
	object.Visible = false
end
coroutine.wrap(ANTV_fake_script)()

end
