--Still working on this

--Adds katanas and pistols to the player. Q selects pistols, click to shoot, E selects katanas, click to swing.

local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:wait()
function new(classname)
	return Instance.new(classname)
end
--loading
repeat wait() until chr ~= nil

--build mr dp
local katanas = {left={},right={}}

katanas.left.Handle = new("Part")
katanas.left.Mesh = new("SpecialMesh")
katanas.left.Handle.Size = Vector3.new(1, 0.8, 5)
katanas.left.Mesh.Scale = Vector3.new(1.7,1.7,1.7)
katanas.left.Mesh.MeshType = Enum.MeshType.FileMesh
katanas.left.Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
katanas.left.Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
katanas.right.Handle = katanas.left.Handle:clone()
katanas.right.Mesh = katanas.left.Mesh:clone()
katanas.left.Mesh.Parent = katanas.left.Handle
katanas.right.Mesh.Parent = katanas.right.Handle
katanas.right.Handle.Parent = workspace
katanas.left.Handle.Parent = workspace

--katanas done, woop woop
--time for pistol
local pistol = {gun={right={},left={}},holster={right={},left={}}}
pistol.gun.right.Handle = new("Part")
pistol.gun.right.Handle.Size = Vector3.new(0.2, 0.8, 0.8)
pistol.gun.right.Mesh = new("SpecialMesh")
pistol.gun.right.Mesh.MeshType = Enum.MeshType.FileMesh
pistol.gun.right.Mesh.MeshId = "http://www.roblox.com/asset/?id=72012879"
pistol.gun.right.Mesh.TextureId = "http://www.roblox.com/asset/?id=72012859"
pistol.gun.right.Mesh.Scale = Vector3.new(1.25,1.25,1.25)
pistol.gun.right.Mesh.Parent = pistol.gun.right.Handle
pistol.gun.left.Handle = pistol.gun.right.Handle:clone()
pistol.gun.left.Mesh = pistol.gun.right.Mesh:clone()
pistol.gun.left.Mesh.Parent = pistol.gun.left.Handle
pistol.gun.right.Handle.Parent = workspace
pistol.gun.left.Handle.Parent = workspace
pistol.holster.right = new("Part")
pistol.holster.right.BrickColor = BrickColor.Black()
pistol.holster.right.Size = Vector3.new(0.3,1,1)
pistol.holster.right.TopSurface = Enum.SurfaceType.Smooth
pistol.holster.right.BottomSurface = Enum.SurfaceType.Smooth
pistol.holster.left = pistol.holster.right:clone()
pistol.holster.right.Parent = workspace
pistol.holster.left.Parent = workspace
