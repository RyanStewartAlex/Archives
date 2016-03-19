--3/19/2016

--Changes player's face to the value of 'face'
local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:wait()
local face = "rbxassetid://76385103"

wait()

chr:WaitForChild("Head")
for i,v in pairs(chr.Head:GetChildren()) do
	if v:IsA("Decal") then
		v:Destroy()
	end
end
local f = Instance.new("Decal",chr.Head)
f.Texture = face
f.Face = "Front"
