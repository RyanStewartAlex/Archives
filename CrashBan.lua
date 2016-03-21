--3/19/2016

--Allows you to add banned players with cb/PLAYERNAME, not case sensitive. Will crashban all players in the table.
local plr = game.Players.LocalPlayer
local BannedPlayers = {}

function getPlayer(partName)
	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name:lower():match("^"..partName:lower()) then
			return v
		else
			return partName
		end
	end
end


game:GetService("Players").PlayerAdded:connect(function(p)
	for i = 1,#BannedPlayers do
		if p.Name:lower() == BannedPlayers[i].Name:lower() then
			print(p.Name)
			p:Kick()
			spawn(function()
				wait()
				if p ~= nil then
					p:Destroy()
				end
			end)
		end
	end
end)

plr.Chatted:connect(function(msg)
	print(string.sub(msg:lower(),1,3))
	if string.sub(msg:lower(),1,3) == "cb/" then
		print(1)
		local mp = string.sub(msg:lower(),4)
		print(mp)
		print(getPlayer(mp))
		table.insert(BannedPlayers,getPlayer(mp))
		for _,v in pairs(game:GetService("Players"):GetPlayers()) do
			for i = 1,#BannedPlayers do
				if v.Name:lower() == BannedPlayers[i].Name:lower() then
					print(v.Name)
					v:Kick()
					spawn(function()
						wait()
						if v ~= nil then
							v:Destroy()
						end
					end)
				end
			end
		end
	end
end)
