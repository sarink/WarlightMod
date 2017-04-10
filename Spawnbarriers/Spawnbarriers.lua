function Spawnbarriers(game, standing)
	for _, territory in pairs(standing.Territories) do
        if (territory.OwnerPlayerID ~= PlayerID.Neutral) then
        	local newArmiesCount = Mod.Settings.ConnectedArmyNumber;
           	if (newArmiesCount < 0) then newArmiesCount = 0 end;
            if (newArmiesCount > 100000) then newArmiesCount = 100000 end;
			print('is called1');
			for placeholder, conn in pairs(game.Map.Territories[territory.ID].ConnectedTo.ID) do
				print('is called2');
		  		if(standing.Territories[conn].OwnerPlayerID == PlayerID.Neutral) then
					standing.Territories[conn].NumArmies = Armies(newArmiesCount);
		   		end
	    	end
        end
  	end
end
