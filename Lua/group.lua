--3/19/2016

--creates billboard gui above player's head, gui displays role in group.

local group = 000000
local gui = Instance.new("BillboardGui",script)
gui.Size = UDim2.new(1,0,1,0)
gui.StudsOffset = Vector3.new(0,2,0)
local l = Instance.new("TextLabel",gui)
l.Position = UDim2.new(-1,0,0,0)
l.Size = UDim2.new(3,0,1,0)
l.BorderSizePixel = 0
l.BackgroundTransparency = .6
l.BackgroundColor3 = Color3.new(0,0,0)
l.TextColor3 = Color3.new(1,1,1)
l.TextScaled = true

game.Players.PlayerAdded:connect(function(plr)
	plr.CharacterAdded:connect(function(chr)
		if chr:findFirstChild("Head") then
			local temp = gui:clone()
			temp.Parent = chr.Head
			temp.TextLabel.Text = plr:GetRoleInGroup(group)
		end
	end)
end)
