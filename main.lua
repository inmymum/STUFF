local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/inmymum/RadioSilence/main/Lib/UI/main.lua"))()
local Window = Library.CreateLib("FuckerGUI", "DarkTheme")

local LocalP = game.Players.LocalPlayer
local Mouse = LocalP:GetMouse()
function getPlayerNames() -- Get list of players for selection dropdown
    local playerNames = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    return playerNames
end
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
    Mouse.KeyDown:Connect(function()
        LocalP.Character.Torso:Destroy()
    end)
end)
