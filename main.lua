-- [[ HAHAHUD HUB - MOBILE FIX VERSION ]] --
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hahahud Hub 🚀", HidePremium = false, SaveConfig = true, ConfigFolder = "HahahudConfig"})

local MainTab = Window:MakeTab({Name = "Auto Farm", Icon = "rbxassetid://4483345998"})

-- Auto Farm Brainrots (Divine & Celestia)
_G.AutoFarm = false
MainTab:AddToggle({
    Name = "Auto Divine & Celestia",
    Default = false,
    Callback = function(Value)
        _G.AutoFarm = Value
        if Value then
            task.spawn(function()
                while _G.AutoFarm do
                    pcall(function() -- Prevents the script from stopping when the character dies
                        local char = game.Players.LocalPlayer.Character
                        local hrp = char and char:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            -- Teleport to Divine
                            hrp.CFrame = CFrame.new(1250, 50, 2500) 
                            task.wait(2)
                            -- Teleport to Celestia
                            hrp.CFrame = CFrame.new(-3000, 50, 5000)
                            task.wait(2)
                        end
                    end)
                    task.wait(0.1)
                end
            end)
        end
    end    
})

-- Speed Adjustment
MainTab:AddSlider({
    Name = "Walk Speed",
    Min = 16, Max = 500, Default = 26,
    Callback = function(V) 
        pcall(function()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V 
        end)
    end
})

OrionLib:Init()
