local plr = game.Players.LocalPlayer
plr:WaitForChild("PlayerGui")
local g = Instance.new("ScreenGui",plr.PlayerGui)
local f = Instance.new("TextBox",g)
f.BackgroundColor3 = Color3.new(0,0,0)
f.BackgroundTransparency = .4
f.BorderSizePixel = 0
f.ClearTextOnFocus = false
f.Position = UDim2.new(0,0,-0.1,0)
f.Size = UDim2.new(1,0,.035,0)
f.TextColor3 = Color3.new(1,1,1)
f.TextXAlignment = Enum.TextXAlignment.Left
f.Text = ""
f.TextScaled = true
local down = false
local b = Instance.new("BillboardGui")
local t = Instance.new("TextLabel",b)
b.Size = UDim2.new(5,0,2,0)
b.StudsOffset = Vector3.new(0,3,0)
t.Name = "T"
t.Size = UDim2.new(1,0,1,0)
t.BorderSizePixel = 0
t.BackgroundColor3 = Color3.new(0,0,0)
t.BackgroundTransparency = .4
t.FontSize = Enum.FontSize.Size36
t.TextScaled = true
t.TextWrapped = true
t.TextColor3 = Color3.new(1,1,1)

game:GetService("UserInputService").InputBegan:connect(function(i,g)
	if i.UserInputType == Enum.UserInputType.Keyboard then
		if i.KeyCode == Enum.KeyCode.BackSlash then
			if not g then
				if not down then
					f:TweenPosition(UDim2.new(0,0,0.96,0),"Out","Quint",.2,false)
					down = true
					f:CaptureFocus()
				else
					if g then
						f:CaptureFocus()
					else
						f:ReleaseFocus()
						f:TweenPosition(UDim2.new(0,0,-.1,0),"Out","Quint",.2,true)
						down = false
					end
				end
			end
		elseif i.KeyCode == Enum.KeyCode.Escape then
			if down then
				f.Text = ""
				wait()
				f:CaptureFocus()
			end
		elseif i.KeyCode == Enum.KeyCode.Return or i.KeyCode == Enum.KeyCode.KeypadEnter then
			if down then
				local m = f.Text
				if m ~= "" then
					f.Text = ""
					local tb = b:clone()
					tb.Parent = plr.Character.Head
					tb:findFirstChild("T").Text = m
					spawn(function()
						wait(4)
						tb:Destroy()
					end)
					f:ReleaseFocus()
					f:TweenPosition(UDim2.new(0,0,-.1,0),"Out","Quint",.2,true)
					down = false
				end
			end
		end
	end
end)
