--3/19/2016

--Allows you to add banned players with cb/PLAYERNAME, not case sensitive. Will crashban all players in the table.
local plr = game.Players.LocalPlayer
local BannedPlayers = {}

function getPlayer(partName)
	for _, v in pairs(game.Players:GetPlayers()) do
		if v.Name:lower():match("^"..partName:lower()) then
			return v
		else
			return partName
		end
	end
end


game.Players.PlayerAdded:connect(function(plr)
	for i = 1,#BannedPlayers do
		if plr.Name:lower() == BannedPlayers[i]:lower() then
			plr:Kick()
		end
	end
end)

plr.Chatted:connect(function(msg)
	if string.sub(msg:lower(),1,3) == "cb/" then
		local mp = string.sub(msg:lower(),4)
		table.insert(BannedPlayers,getPlayer(mp))
		for i = 1,#BannedPlayers do
			if plr.Name:lower() == BannedPlayers[i]:lower() then
				plr:Kick()
			end
		end
	end
end)
