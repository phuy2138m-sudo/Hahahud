-- [[ HAHAHUD HUB - ENGLISH MOBILE VERSION ]] --
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hahahud Hub 🚀", HidePremium = false, SaveConfig = true, ConfigFolder = "HahahudConfig"})

local MainTab = Window:MakeTab({Name = "Main Features", Icon = "rbxassetid://4483345998"})

_G.AutoFarm = false
MainTab:AddToggle({
    Name = "Auto Farm Divine & Celestia",
    Default = false,
    Callback = function(Value)
        _G.AutoFarm = Value
        if Value then
            task.spawn(function()
                while _G.AutoFarm do
                    pcall(function() 
                        local char = game.Players.LocalPlayer.Character
                        local hrp = char and char:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            hrp.CFrame = CFrame.new(1250, 50, 2500) 
                            task.wait(2)
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

MainTab:AddSlider({
    Name = "Walk Speed Boost",
    Min = 16, Max = 500, Default = 100,
    Callback = function(V) 
        pcall(function()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V 
        end)
    end
})

OrionLib:Init()
