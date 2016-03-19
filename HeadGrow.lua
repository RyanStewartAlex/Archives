--3/19/2016

--Causes player's heads to inflate and then explode if their body is clicked.

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

mouse.Button1Down:connect(function()
	local t = mouse.Target
	if t ~= nil then
		if t.Parent:findFirstChild("Humanoid") then
			if t.Parent:findFirstChild("Head") then
				if t.Parent.Head:findFirstChild("Mesh") then
					for i = 1,20 do
						t.Parent.Head.Mesh.Scale = t.Parent.Head.Mesh.Scale + Vector3.new(.25,.25,.25)
						wait(.07)
					end
					local e = Instance.new("Explosion",workspace)
					e.Position = t.Parent.Head.Position
				end
			end
		end
	end
end)
