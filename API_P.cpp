local scrName;
GG = (getgenv and getgenv()) or _G or shared;
GG.HttpsSer = game.GetService(game, 'HttpService');
function EnCodeJ(obj)
    return (GG.HttpsSer):JSONEncode(obj)
end;
function DeCodeJ(obj)
    return (GG.HttpsSer):JSONDecode(obj)
end;
function getfolder(obj)
    if isfolder then
        return (obj and isfolder(obj)) or true;
    else
        return false;
    end;
end;

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
	scrName = "https://raw.githubusercontent.com/Yumiara/CPP/refs/heads/main/listfiles/5750914919";
elseif game.GameId == 3647333358 then -- Evade
	scrName = 'https://raw.githubusercontent.com/Yumiara/Python/refs/heads/main/Evade.py';
elseif game.GameId == 5750914919 then
	scrName = "https://raw.githubusercontent.com/Yumiara/CPP/refs/heads/main/listfiles/5750914919";
elseif game.GameId == 994732206 then -- Bloxfruit
	scrName = 'https://raw.githubusercontent.com/Yumiara/CPP/refs/heads/main/API_K.cpp';
end;

-- loadstring of API_K//flags//Luarify//VLSAH//API_A//serizalis

-- Credits to Serizalis, TTJY, Sevensenz, Vendize, Sally, Flizx, LoliPD, Lowfz

if scrName then
	if scrName == "https://raw.githubusercontent.com/Yumiara/CPP/refs/heads/main/API_K.cpp" then
		scrNameX = "API_K";
		if GG.ALLVersion[scrNameX] == nil then
			GG.ALLVersion[scrNameX] = tostring(tick());
		end;
		if tick() - tonumber(GG.ALLVersion[scrNameX]) >= 600 then
			if writefile then
				SourceXS = game.HttpGet(game, scrName)
				writefile("NeuronXS/" .. scrNameX .. ".lua", SourceXS);
				GG.ALLVersion[scrNameX] = tostring(tick());
				ContentsXSV = EnCodeJ(GG.ALLVersion);
				writefile("NeuronXSVersion.json", ContentsXSV);
				warn("[Neuron X] : Loaded API_K from github via auto update");
				loadstring(SourceXS)();
			else
				game.GetService(game, "Players").LocalPlayer:Kick("writefile failed, try rejoin before report bug");
			end;
		else
			if getfolder then
				if not getfolder("NeuronXS") then
					makefolder("NeuronXS")
				end;
				repeat task.wait(0.7); until getfolder("NeuronXS")
				APISource = isfile("NeuronXS/" .. scrNameX .. ".lua") and readfile("NeuronXS/" .. scrNameX .. ".lua");
				if not APISource or not isfile("NeuronXSVersion.json") then
					if writefile then
						SourceXS = game.HttpGet(game, scrName);
						writefile("NeuronXS/" .. scrNameX .. ".lua", SourceXS, SourceXS);
						GG.ALLVersion[scrNameX] = tostring(tick());
						ContentsXSV = EnCodeJ(GG.ALLVersion);
						writefile("NeuronXSVersion.json", ContentsXSV);
						warn("[Neuron X] : Loaded API_K from github");
						loadstring(SourceXS)();
					else
						game.GetService(game, "Players").LocalPlayer:Kick("writefile failed, try rejoin before report bug");
					end;
				else
					warn("[Neuron X] : Loaded API_K from device and NOT github");
					loadstring(APISource)();
				end;
			else
				game.GetService(game, "Players").LocalPlayer:Kick("isfolder failed, try rejoin before report bug");
			end;
		end;
	else
		SourceXS = game.HttpGet(game, scrName);
		loadstring(SourceXS)();
	end;
else
	game.GetService(game, "Players").LocalPlayer:Kick('Unsupported Experience');
end;
