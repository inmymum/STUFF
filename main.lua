local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/inmymum/RadioSilence/main/Lib/UI/main.lua"))()
local Window = Library.CreateLib("FuckerGUI", "DarkTheme")
local player = game.Players.LocalPlayer

function getPlayerNames() -- Get list of players for selection dropdown
    local playerNames = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    return playerNames
end
local movehub = Window:NewTab("Movement")
local movement = movehub:NewSection("")
local rapetab = Window:NewTab("Rape")
local rape = rapetab:NewSection("Rape The hoes")
local dropdown = rape:NewDropdown("Rapist","", getPlayerNames(), function(x)
    rapist = x
end)
local dropdown1 = rape:NewDropdown("Victim","", getPlayerNames(), function(y)
    victim = y
end)
rape:NewLabel("")
rape:NewButton("Refresh playerlist", "Refreshes playerlist", function()
    local list = getPlayerNames()
    dropdown:Refresh(list)
    dropdown1:Refresh(list)
end)
rape:NewButton("Fuck the bitch", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/inmymum/RadioSilence/main/Lib/Scripts/rapefunc.lua"))()
    fun(rapist, victim)
end)
rape:NewButton("RESET", "Reset your character to stop fucking her", function()
    player.Character.Humanoid.Health = 0
end)
movement:NewLabel("Speed")
movement:NewSlider("Slider", "How fast you move", 100, 18, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
movement:NewButton("Default", "Set jump height to default", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
end)
movement:NewLabel("Jump height")
movement:NewSlider("Slider", "How high you jump obviously", 350, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
movement:NewButton("Default", "Set jump height to default", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 18
end)
