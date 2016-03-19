--Still working on this

--Gives the player a gun holster on their leg, select E to take out/put away the gun. Click to fire
--Spins player in a circle firing in every direction.

local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:wait()
function new(classname)
	return Instance.new(classname)
end

chr:WaitForChild("Right Leg")

local pistol = {gun={}}
pistol.gun.Handle = new("Part")
pistol.gun.Handle.Size = Vector3.new(0.2, 0.8, 0.8)
pistol.gun.Mesh = new("SpecialMesh")
pistol.gun.Mesh.MeshType = Enum.MeshType.FileMesh
pistol.gun.Mesh.MeshId = "http://www.roblox.com/asset/?id=72012879"
pistol.gun.Mesh.TextureId = "http://www.roblox.com/asset/?id=72012859"
pistol.gun.Mesh.Scale = Vector3.new(1.25,1.25,1.25)
pistol.gun.Mesh.Parent = pistol.gun.Handle
pistol.gun.Handle.CanCollide = false
pistol.gun.Handle.Anchored = true
pistol.gun.Handle.Parent = workspace
wait()
pistol.gun.CFrame = chr["Right Leg"].CFrame
local w = Instance.new("Weld",chr["Right Leg"])
w.Part0 = pistol.gun.Handle
w.Part1 = chr["Right Leg"]
w.C0 = chr["Right Leg"].CFrame
w.C1 = CFrame.new(0.6,0.5,0) * CFrame.Angles(math.rad(180),0,0) * chr["Right Leg"].CFrame
pistol.gun.Handle.Anchored = false
