-- [[ DARKFORGE-X | RUN FOR BRAINROTS ]]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "DarkForge-X | Brainrot Run", HidePremium = false, SaveConfig = true, ConfigFolder = "BrainrotRun"})

local MainTab = Window:MakeTab({Name = "Auto Farm", Icon = "rbxassetid://4483345998"})

MainTab:AddToggle({
    Name = "Auto Divine & Celestia",
    Default = false,
    Callback = function(Value)
        _G.AutoFarm = Value
        task.spawn(function()
            while _G.AutoFarm do
                local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if hrp then
                    hrp.CFrame = CFrame.new(1250, 50, 2500) -- Divine
                    task.wait(2)
                    hrp.CFrame = CFrame.new(-3000, 50, 5000) -- Celestia
                    task.wait(2)
                end
            end
        end)
    end    
})

MainTab:AddSlider({
    Name = "Speed (+10)",
    Min = 16, Max = 300, Default = 26,
    Callback = function(V) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V end
})

OrionLib:Init()      
