------------- Global Var -------------

GG = (getgenv and getgenv()) or _G or shared

GG.DisableMultipleExecute = false;

if GG.DisableMultipleExecute then
    if GG and GG["NeuronXUNi"] then
        (GG.Notification).new({
            Description = "You are already execute this Universal Script";
            Title = "Neuron X";
            Duration = 9;
        });
        return;
    else
        GG["NeuronXUNi"] = true;
    end;
end;

------------- Thread -------------

setTH = set_thread_identity or setthreadidentity;

pcall(function()
	if setTH then
		setTH(8);
	end;
end);

------------- Variables -------------

local W = game:GetService("Workspace")
local P = game:GetService("Players");
local L = game:GetService("Lighting");
local C = game:GetService("CoreGui");
local H = game:GetService("RunService");
local R = game:GetService("ReplicatedStorage");
local VU = game:GetService("VirtualUser");
local T = game:GetService("TeleportService");
local TW = game:GetService("TweenService");
local selff = P.LocalPlayer;
local PSG = selff:WaitForChild("PlayerGui");
local Backpack = selff.Backpack;
local selc = selff.Character;
local Cam = W:WaitForChild("Camera");
local HttpsService = game:GetService("HttpService");

------------- Var API -------------

setc = setclipboard or toclipboard;
tos = tostring;
ton = tonumber;
tablein = table.insert;
tablecl = table.clear;
print = print;
tk = task;
tspawn = tk.spawn;
twait = tk.wait;
tdelay = task.delay;
wait = wait;
FindFirstChild = game.FindFirstChild;
Vec3 = Vector3.new;
CF = CFrame.new;
str = string;
strgsub = str.gsub;
strfind = str.find;
pir = pairs;
IsA = game.IsA;
pcal = pcall;
FindFirstChildOfClass = game.FindFirstChildOfClass;
GetAttribute = game.GetAttribute;
SetAttribute = game.SetAttribute;
Instancen = Instance.new;
tick = tick;
delay = delay;
SetPrimaryPartCFrame = W.SetPrimaryPartCFrame;
GetPivot = W.GetPivot;
GetDescendants = game.GetDescendants;
GetChildren = game.GetChildren;
FindFirstAncestorWhichIsA = game.FindFirstAncestorWhichIsA;
FindFirstChildWhichIsA = game.FindFirstChildWhichIsA;
PivotTo = W.PivotTo;
GetPivot = W.GetPivot;

------------- Loader -------------

ParentalUIS = (gethui and gethui()) or C;

Originalwrite = writefile;
Originalisfile = isfile;

if GG and GG["NeuronXUNiXTra"] then
    GG.writefile = function(a, b)
        if Originalwrite then
            return Originalwrite(a, b);
        end;
    end;

    GG.isfile = function(a)
        if Originalisfile then
            return Originalisfile(a);
        end;
    end;

    GG["NeuronXUNiXTra"] = true;
end;

loadlink = function(a)
    (loadstring or load)(game.HttpGet(game, a))();
end;

function webImport(file) -- Normal
    return (loadstring or load)(game.HttpGetAsync(game, ("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format("Upbolt", "revision", file)), file .. '.lua')();
end;

function webImport2(file) -- Wave
    return (loadstring or load)(game.HttpGetAsync(game, ("https://raw.githubusercontent.com/%s/Hydroxide-Wave-Fix/%s/%s.lua"):format("Deni210", "revision", file)), file .. '.lua')();
end;

function getInstanceFromFullName(fullName)
    local segments = string.split(fullName, ".")
    local currentInstance = game

    for _, segment in ipairs(segments) do
        currentInstance = currentInstance:FindFirstChild(segment)
        if not currentInstance then
            return nil
        end
    end

    return currentInstance
end

function getHighestParent(instance)
    local current = instance;
    while current and current.Parent and current.Parent ~= game do
        current = current.Parent;
    end;
    return current;
end;

function TPg(a)
    T:Teleport(a, selff);
end;

local LastestRemote = nil;
local Firing = false;

local function GetCalling()
    ------------- Save Configs -------------

    Configs = {
        ["nilinstances"] = false;
        ["writefile"] = true;
        ["autorj"] = true;
        ["checkremotes"] = true;
    };

    ------------- UI -------------
    NothingLibrary = nil;

    APISource = isfile("NeuronXS/UI_P.lua") and readfile("NeuronXS/UI_P.lua");

    if isfile or isfolder then
        if not isfolder("NeuronXS") then
            makefolder("NeuronXS");
        end;
    else
        SourceXS = game.HttpGet(game, 'https://raw.githubusercontent.com/Yumiara/Python/refs/heads/main/Python.py');
        NothingLibrary = loadstring(SourceXS)();
        writefile("NeuronXS/UI_P.lua", SourceXS);
        warn("[Neuron X] : Loaded UI_P from github");
    end;

    if not isfolder("NeuronXS/UniCHEAT") then
        makefolder("NeuronXS/UniCHEAT")
    end;

    if APISource then
        NothingLibrary = loadstring(APISource)();
        warn("[Neuron X] : Loaded UI_P from device and NOT github");
    else
        SourceXS = game.HttpGet(game, 'https://raw.githubusercontent.com/Yumiara/Python/refs/heads/main/Python.py');
        NothingLibrary = loadstring(SourceXS)();
        writefile("NeuronXS/UI_P.lua", SourceXS);
        warn("[Neuron X] : Loaded UI_P from github");
    end;

    GG.Notification = NothingLibrary.Notification();

    CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0};

    FLYING = false; speedofthevfly = 1; speedofthefly = 1;

    cmdm = selff:GetMouse();

    placeId = game.PlaceId;
    gameId = game.GameId;

    ------------- Windows, Tab, Section, Title, Button -------------

    Windows = NothingLibrary.new({
        Title = "NeuronX [" .. tos(Iden) .. " UNC]",
        Description = "By Neuron X",
        Keybind = Enum.KeyCode.Y,
        Logo = 'http://www.roblox.com/asset/?id=80055499055359',
        IsRich = true,
        RichText = 'Neuron X <font color="#00FF00">[ Universal ]</font>'
    });

    Information = Windows:NewTab({
		Title = "Information",
		Description = "",
		Icon = "rbxassetid://10734907168"
	});

    InformationS1 = Information:NewSection({
		Title = "Neuron X",
		Icon = "rbxassetid://10734922324",
		Position = "Left",
		IsRich = true,
		RichText = '<font color="#FF0000">Neuron X</font>'
	});
    InformationS1:NewTitle({
		Text = "You see this script because this game is not supported.",
		TextSize = 12,
		IsRich = false,
	});
    InformationS1:NewTitle({
		Text = "Neuron X is a universal script that can be execute on any game.",
		TextSize = 8,
		IsRich = false,
	});

    InformationS2 = Information:NewSection({
		Title = "Executor",
		Icon = "rbxassetid://10734922324",
		Position = "Right",
		IsRich = true,
		RichText = '<font color="#FF0000">Executor</font>'
	});
	InformationS2:NewTitle({
		Text = "This script supported all executor that is written in C++ like Solara, Wave, SynZ, All Mobile execute BUT that's doesn't mean every functions are working like Auto Bounty work on wave but not Solara.",
		TextSize = 8,
		IsRich = false,
	});

    InformationContent = Information:NewSection({
		Title = "Content Creators",
		Icon = "rbxassetid://10734922324",
		Position = "Left",
		IsRich = true,
		RichText = '<font color="#FF0000">Content Creators</font>'
	});
    InformationContent:NewTitle({
		Text = "If you are one of the people who do showcase script on youtube, tiktok, others plateform. You have the right to showcase this scritp without any problem.",
		TextSize = 8,
		IsRich = false,
	});
    InformationContent:NewTitle({
		Text = "If you wanted to showcase but can't get key, You can contact sofia to give you a key.",
		TextSize = 8,
		IsRich = false,
	});

    InformationFinal = Information:NewSection({
		Title = "Credits",
		Icon = "rbxassetid://10734922324",
		Position = "Left",
		IsRich = true,
		RichText = '<font color="#FF0000">Credits</font>'
	});
	InformationFinal:NewTitle({
		Text = "Overall: SevenSenz7",
		TextSize = 8,
		IsRich = false,
	});
	InformationFinal:NewTitle({
		Text = "Helper: sofia_z5z",
		TextSize = 8,
		IsRich = false,
	});
	InformationFinal:NewTitle({
		Text = "UI: catsus, Remake: sofia_z5z",
		TextSize = 8,
		IsRich = false,
	});
	InformationFinal:NewTitle({
		Text = "Auth: Luarify",
		TextSize = 8,
		IsRich = false,
	});
	InformationFinal:NewTitle({
		Text = "Tester: sofia_z5z",
		TextSize = 8,
		IsRich = false,
	});
	InformationFinal:NewTitle({
		Text = "Sponsored by Jackpot",
		TextSize = 8,
		IsRich = false,
	});
	InformationFinal:NewTitle({
		Text = "VIP: All free by Jackpot",
		TextSize = 8,
		IsRich = false,
	});
	InformationFinal:NewButton({
		Title = "Copy discord server link",
		Callback = function()
			setc("https://discord.gg/brainrott");
		end,
	});
	InformationFinal:NewButton({
		Title = "Copy official yt channal link",
		Callback = function()
			setc("https://www.youtube.com/@ttjyTeam");
		end,
	});

    InformationPromoting = Information:NewSection({
		Title = "Promoting ❤️",
		Icon = "rbxassetid://10734922324",
		Position = "Right",
		IsRich = true,
		RichText = '<font color="#FF0000">Promoting ❤️</font>'
	});
    InformationPromoting:NewButton({
		Title = "Good-Premium Blade ball, Fisch Script at Flow",
		Callback = function()
			setc("https://discord.gg/flowrbx");
            (GG.Notification).new({
                Description = "https://discord.gg/flowrbx";
                Title = "Neuron X";
                Duration = 9;
            });
		end,
	});
    InformationPromoting:NewTitle({
		Text = "The Mimic Script OP Features: Auto farm coins AT Neuron X",
		TextSize = 10,
		IsRich = false,
	});
    InformationPromoting:NewTitle({
		Text = "Dragon Adventure Script OP Features: Auto farm coins AT Neuron X",
		TextSize = 10,
		IsRich = false,
	});
    InformationPromoting:NewButton({
		Title = "Nothing here, Contact Sofia if you wanted to be in here",
		Callback = function()
			
		end,
	});

    Tools = Windows:NewTab({
		Title = "Tools",
		Description = "",
		Icon = "rbxassetid://10747383470"
	});

    ToolsS1 = Tools:NewSection({
		Title = "Tools",
		Icon = "rbxassetid://10747374131",
		Position = "Left",
		IsRich = false,
	});
    ToolsS1:NewButton({
		Title = "Infinite Yield",
		Callback = function()
			loadlink("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source");
		end,
	});
    ToolsS1:NewButton({
		Title = "Dex",
		Callback = function()
			loadlink("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua");
		end,
	});
    ToolsS1:NewButton({
		Title = "Audio logger",
		Callback = function()
			loadlink("https://raw.githubusercontent.com/infyiff/backup/main/audiologger.lua");
		end,
	});
    ToolsS1:NewButton({
		Title = "Remote spy",
		Callback = function()
			loadlink("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua");
		end,
	});
    ToolsS1:NewButton({
		Title = "UNC Test",
		Callback = function()
			loadlink("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/refs/heads/main/UNCCheckEnv.lua");
		end,
	});
    ToolsS1:NewButton({
		Title = "Hydroxide",
		Callback = function()
            webImport("init");
            webImport("ui/main");
		end,
	});
    ToolsS1:NewButton({
		Title = "Hydroxide for Wave",
		Callback = function()
            webImport2("init");
            webImport2("ui/main");
		end,
	});

    ToolsS2 = Tools:NewSection({
		Title = "Anti Cheat Detector",
		Icon = "rbxassetid://10747374131",
		Position = "Left",
		IsRich = false,
	});
    ToolsS2:NewButton({
		Title = "Print Actors",
		Callback = function()
            for _, v in pir(GetDescendants(game)) do
                if v:IsA("Actor") then
                    print("Actor found: ", _, v:GetFullName());
                end;
            end;
		end,
	});
    ToolsS2:NewButton({
		Title = "Print Name: Anti",
		Callback = function()
            for _, v in pir(GetDescendants(game)) do
                if v and (strfind(v.Name, "Anti") or strfind(v.Name, "An-ti") or strfind(v.Name, "anti") or strfind(v.Name, "cheat")) then
                    print("Object with Anti in their name found: ", _, v:GetFullName());
                end;
            end;
		end,
	});

    ToolsS3 = Tools:NewSection({
		Title = "ACL",
		Icon = "rbxassetid://10747374131",
		Position = "Right",
		IsRich = false,
	});
    ToolsS3:NewToggle({
		Title = "nil instances",
		Default = Configs["nilinstances"],
		Callback = function(tr)
			Configs["nilinstances"] = tr;
		end,
	});
    ToolsS3:NewToggle({
		Title = "write file",
		Default = Configs["writefile"],
		Callback = function(tr)
			Configs["writefile"] = tr;
		end,
	});
    ToolsS3:NewToggle({
		Title = "auto rejoin",
		Default = Configs["autorj"],
		Callback = function(tr)
			Configs["autorj"] = tr;
		end,
	});
    ToolsS3:NewToggle({
		Title = "check remotes",
		Default = Configs["checkremotes"],
		Callback = function(tr)
			Configs["checkremotes"] = tr;
		end,
	});
    ToolsS3:NewButton({
		Title = "Auto execute (1 CLICK ONLY)",
		Callback = function()
			queue = queue_on_teleport or queueonteleport
            queue([[
                print("a")
            ]]);
		end,
	});

    --[[
    if not IgnoreInstances[game.PlaceId .. "Hop"] then
        IgnoreInstances[game.PlaceId .. "Hop"] = {};
    end;

    ToolsS3:NewTextbox({
        Title = "Teleport Remote",
        Default = IgnoreInstances and IgnoreInstances[game.PlaceId .. "Hop"] and HttpsService:JSONEncode(IgnoreInstances[game.PlaceId .. "Hop"]) or "{path here}",
        FileType = "",
        Callback = function(a)
            local resultTable = loadstring("return " .. a)()

            for _, v in ipairs(resultTable) do
                tablein(IgnoreInstances[game.PlaceId .. "Hop"], v);
                print(v);
            end;
        end,
    });

    --]]

    local IgnoreInstances = {};

    if isfile("NeuronXS/UniCHEAT/Ignore.json") then
        IgnoreInstances = HttpsService:JSONDecode(readfile("NeuronXS/UniCHEAT/Ignore.json"));
    end;

    local function resolveObjectFromPath(path)
        local currentObject = game;
        for part in path:gmatch("[^%.]+") do
            currentObject = currentObject:FindFirstChild(part);
            if not currentObject then
                return nil;
            end;
        end;
        return currentObject;
    end;

    for placeId, remotePaths in pairs(IgnoreInstances) do
        for index, remotePath in ipairs(remotePaths) do
            if typeof(remotePath) == "string" then
                local resolvedObject = resolveObjectFromPath(remotePath);
                if resolvedObject then
                    remotePaths[index] = resolvedObject;
                else
                    warn("Failed to resolve object for path:", remotePath);
                end;
            end;
        end;
    end;


    ToolsS3:NewButton({
		Title = "Start Process",
		Callback = function()

            local Descendants = GetDescendants(game)

            local ActorTable = {};
            for _, v in pir(Descendants) do
                if v:IsA("Actor") then
                    tablein(ActorTable, v:GetFullName());
                end;
            end;

            local AntiTable = {};
            for _, v in pir(Descendants) do
                if v and (strfind(v.Name, "Anti") or strfind(v.Name, "An-ti") or strfind(v.Name, "anti") or strfind(v.Name, "cheat")) then
                    tablein(AntiTable, v:GetFullName());
                end;
            end;

            if Configs["writefile"] then
                pcal(function()
                    writefile("NeuronXS/UniCHEAT/Anti.json", HttpsService:JSONEncode(AntiTable));
                end);
                pcal(function()
                    writefile("NeuronXS/UniCHEAT/Actors.json", HttpsService:JSONEncode(ActorTable));
                end);
            end;

            warn("⬇️ Calculating Anti Cheat Level ⬇️");

            warn([[


            ]])

            warn("Actors : " .. #ActorTable);


            local LV = 0;

            if #AntiTable > 0 then
                LV = LV + 1;
            end;
            if #ActorTable > 0 then
                LV = LV + 2;
                if #ActorTable > 10 then
                    LV = LV + 1;
                end;
            end;
            
            local AntiTableSep = {
                ["Local"] = {};
                ["Server"] = {};
                ["Others"] = {}
            };

            warn("Object with 'Anti' in their name : " .. tos(#AntiTable));

            for _,v in pir(AntiTable) do
                pcal(function()
                    local InstanceConvert = getInstanceFromFullName(v);
                    if getHighestParent(InstanceConvert) ~= game.CorePackages and getHighestParent(InstanceConvert) ~= game.CoreGui then
                        if InstanceConvert and IsA(InstanceConvert, "LocalScript") then
                            tablein(AntiTableSep["Local"], v);
                        elseif InstanceConvert and IsA(InstanceConvert, "Script") then
                            tablein(AntiTableSep["Server"], v);
                        else
                            tablein(AntiTableSep["Others"], v);
                        end;
                    end;
                end);
            end;

            if #AntiTableSep["Local"] > 0 then
                LV = LV;
            end;
            if #AntiTableSep["Server"] > 0 then
                LV = LV + 1.5;
            end;
            if #AntiTableSep["Local"] == 0 and #AntiTableSep["Server"] == 0 and #AntiTable > 0 then
                LV = LV - 1;
            end;

            warn("Anti type is LocalScript : " .. tos(#AntiTableSep["Local"]));
            warn("Anti type is ServerScript : " .. tos(#AntiTableSep["Server"]));
            warn("Anti type is Others : " .. tos(#AntiTableSep["Others"]));

            if IgnoreInstances[tos(game.PlaceId)] == nil then
                IgnoreInstances[tos(game.PlaceId)] = {};
            end;

            if #IgnoreInstances[tos(game.PlaceId)] > 0 and #IgnoreInstances[tos(game.PlaceId)] <= 4 then
                LV = LV + 1;
            elseif #IgnoreInstances[tos(game.PlaceId)] > 4 and #IgnoreInstances[tos(game.PlaceId)] <= 7 then
                LV = LV + 1.5;
            elseif #IgnoreInstances[tos(game.PlaceId)] > 7 then
                LV = LV + 2;
            end;

            warn("Object that will trigger the Anti Cheat : " .. tos(#IgnoreInstances[tos(game.PlaceId)]));

            Found = false;

            if Configs["checkremotes"] then
                for _, v in pir(Descendants) do
                    if strfind(string.lower(v.Name), "remote") then
                        if getHighestParent(v) ~= game.CorePackages and getHighestParent(v) ~= game.CoreGui then
                            LastestRemote = nil;
                            Firing = true;
                            --if not table.find(IgnoreInstances[game.PlaceId .. "Hop"], v) then
                                pcall(function()
                                    if not table.find(IgnoreInstances[tos(game.PlaceId)], v) then
                                        if IsA(v, "RemoteFunction") then
                                            LastestRemote = v;
                                            v:InvokeServer(math.random(1,100), math.random(1,100), math.random(1,100), "Fuck you");
                                        end;
                                        if IsA(v, "RemoteEvent") then
                                            LastestRemote = v;
                                            v:FireServer(math.random(1,100), math.random(1,100), math.random(1,100), "Fuck you");
                                        end;
                                        twait();
                                    else
                                        Found = true;
                                    end;
                                end);
                            --end;
                        end;
                    end;
                end;
            end;

            if Found then
                LV = LV + 1.5;
            end;
            
            Firing = false;

            BypassingChance = 0;

            runActor = run_on_actor or runonactor;

            if #ActorTable > 0 then
                if runActor then
                    BypassingChance = BypassingChance + 1;
                end;
            else
                BypassingChance = BypassingChance + 1;
            end;

            if #AntiTable > 0 then
                if #AntiTableSep["Server"] <= 0 and #AntiTableSep["Local"] > 0 then
                    BypassingChance = BypassingChance + 1;
                end;
                if #AntiTableSep["Server"] > 0 and #AntiTableSep["Local"] > 0 then
                    if require or hookfunction then
                        BypassingChance = BypassingChance + 1;
                    else
                        BypassingChance = (BypassingChance == 0 and 0) or (BypassingChance - 1);
                    end;
                end;
            end;

            if Found then
                if hookmetamethod then
                    BypassingChance = BypassingChance + 1;
                end;
            else
                BypassingChance = BypassingChance + 1;
            end;

            if selff.Character then
                SavePos = selff.Character:GetPivot();

                selff.Character:PivotTo(SavePos * CF(360, 360, 0));
                
                twait(2);

                if (selff.Character:GetPivot().Position - SavePos.Position).Magnitude <= 200 then
                    warn("Noclip: Detected")
                    LV = LV + 1;
                    twait();
                end;

                selff.Character:PivotTo(SavePos);

            end;

            warn([[

            
            ]])

            pcal(function()
                warn("⚠️ Executor : " .. tos(identifyexecutor()) .. " ⚠️");
            end);

            if LV == 0 then
                BypassingChance = 5;
            end;

            warn("⚠️ Anti Cheat Level : " .. tos(LV) .. " / 10 ⚠️");
            warn("⚠️ Bypass Chance : " .. tos(BypassingChance) .. " / 5 ⚠️");
		end,
	});

    Teleport = Windows:NewTab({
		Title = "Teleport",
		Description = "",
		Icon = "rbxassetid://10723434557"
	});
    TeleportS1 = Teleport:NewSection({
		Title = "Teleport (Game)",
		Icon = "rbxassetid://10723405649",
		Position = "Left",
		IsRich = true,
		RichText = 'Teleport (<font color="#FFD700">Game</font>)'
	});

    SelectedGame = "Bloxfruit"

    Drop_Teleport = TeleportS1:NewDropdown({
		Title = "Select Game",
		Data = {"Bloxfruit", "The Mimic", "Diddy World", "Dragon Adventure", "Fisch", "Evade", "SCP3008"},
		Default = SelectedGame,
		Callback = function(a)
			SelectedGame = a;
		end,
	});
    TeleportS1:NewButton({
		Title = "Teleport",
		Callback = function()
			if SelectedGame == "Bloxfruit" then
                TPg(2753915549)
            elseif SelectedGame == "The Mimic" then
                TPg(6243699076)
            elseif SelectedGame == "Diddy World" then
                TPg(16116270224)
            elseif SelectedGame == "Dragon Adventure" then
                TPg(3475397644)
            elseif SelectedGame == "Fisch" then
                TPg(16732694052)
            elseif SelectedGame == "Evade" then
                TPg(9872472334)
            elseif SelectedGame == "SCP3008" then
                TPg(2768379856)
            end;
		end,
	});

    Teleport = Windows:NewTab({
		Title = "More soon",
		Description = "",
		Icon = "rbxassetid://10723434557"
	});

    tspawn(function()
        PlaceId = tos(game.PlaceId)
        C.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function()
            OA, AO = pcall(function()
                if Firing and LastestRemote then
                    local remoteIdentifier = LastestRemote:GetFullName();
                    
                    for i, remotePath in ipairs(IgnoreInstances[PlaceId]) do
                        if typeof(remotePath) == "Instance" then
                            IgnoreInstances[PlaceId][i] = remotePath:GetFullName();
                        end;
                    end;

                    table.insert(IgnoreInstances[PlaceId], remoteIdentifier);
                    Vendize = HttpsService:JSONEncode(IgnoreInstances);
                    writefile("NeuronXS/UniCHEAT/Ignore.json", Vendize);
                    twait();
                end;
            end);
            warn(AO);
            if Configs["autorj"] then
                T:Teleport(placeId, selff, game.JobId);
            end;
        end);
    end);
end;


runActor = run_on_actor or runonactor;
if runActor then
    local Actor = Instancen("Actor", selff);
    return runActor(Actor, [[
        GetCalling();
    ]]);
else
    return GetCalling();
end;
