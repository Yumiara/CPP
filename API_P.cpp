local scrName;

game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Script",Text = "Loading, Please wait.Don't re-execute,if it take long time then re-execute",Duration = 10})
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Script",Text = "After check key, sometimes you have to re-execute to make tthe script show",Duration = 10})

if game.GameId == 4367208330 then -- Pressure
	game.GetService(game, "Players").LocalPlayer:Kick("Check status");
elseif game.GameId == 1235188606 then -- Dragon Adventure
	scrName = 'https://raw.githubusercontent.com/Yumiara/CPP/refs/heads/main/API_K.cpp';
elseif game.GameId == 2440500124 then -- Door
	game.GetService(game, "Players").LocalPlayer:Kick("Check status");
elseif game.GameId == 2294168059 then -- The Mimic
	scrName = 'https://raw.githubusercontent.com/Yumiara/CPP/refs/heads/main/API_K.cpp';
elseif game.GameId == 1000233041 then -- SCP
	scrName = 'https://raw.githubusercontent.com/Yumiara/Python/refs/heads/main/SCP3008.py';
elseif game.GameId == 5569032992 then -- Dandy World
	game.GetService(game, "Players").LocalPlayer:Kick("Updating, Please check status");
elseif game.GameId == 5750914919 then -- Fisch
	game.GetService(game, "Players").LocalPlayer:Kick("Check status");
elseif game.GameId == 3647333358 then -- Evade
	scrName = 'https://raw.githubusercontent.com/Yumiara/Python/refs/heads/main/Evade.py';
end;

-- loadstring of API_K//flags//Luarify//VLSAH//API_A//serizalis

-- Credits to Serizalis, TTJY, Sevensenz, Vendize, Sally, Flizx, LoliPD, Lowfz


if scrName then
	local source = game:HttpGetAsync(scrName);
	local Env = loadstring(source);
	
	Env();
else
	game.GetService(game, "Players").LocalPlayer:Kick('Unsupported Experience');
end;
