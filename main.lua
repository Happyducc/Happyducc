-- By unknownn#6188 --

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("HoodWare", "GrapeTheme")
local Tab = Window:NewTab("Aiming")
local Section = Tab:NewSection("Aiming")
Section:NewButton("Silent Aimlock", "Aimlock Press Q to lock Onto A Player", function()
    print("Clicked")
getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 0.129 -- 0.135 - 0.235
    getgenv().AirshotFunccc = false
    getgenv().Tracer = true
    getgenv().Partz = "LowerTorso" -- LowerTorso, HumanoidRootPart,Head,UpperTorso Change it if you want to

    
        local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
        local Locking = false
        local cc = game:GetService("Workspace").CurrentCamera
        local gs = game:GetService("GuiService")
        local ggi = gs.GetGuiInset
        local lp = game:GetService("Players").LocalPlayer
        local mouse = lp:GetMouse()




    function x(tt,tx,cc)
    game.StarterGui:SetCore("SendNotification", {
        Title = tt;
        Text = tx;
        Duration = cc;
    })
end

x("HoodWare", "Loaded", 3)


    if getgenv().flashyes == true then
                       x("HoodWare", "Already Loaded", 5)
        return
    end
    getgenv().flashyes = true
    
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               Locking = not Locking
               if Locking then
               Plr =  getClosestPlayerToCursor()
                x("HoodWare", ""..Plr.Character.Humanoid.DisplayName, 3)
elseif not Locking then
    if Plr then Plr = nil
                       x("HoodWare", "Unlocked", 3)
     
         
end
end
end
end
end)
    function getClosestPlayerToCursor()
        local closestPlayer
        local shortestDistance = 137

        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
                local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end



    
    

    local rawmetatable = getrawmetatable(game)
    local old = rawmetatable.__namecall
    setreadonly(rawmetatable, false)
    rawmetatable.__namecall = newcclosure(function(...)
        local args = {...}
        if Plr ~= nil  and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
            return old(unpack(args))
        end
        return old(...)
    end)


game:GetService("RunService").RenderStepped:connect(function()    
if getgenv().AirshotFunccc == true then

            if Plr ~= nil and Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                    if new == Enum.HumanoidStateType.Freefall then
                    getgenv().Partz = "RightFoot"
                    else
                        getgenv().Partz = "LowerTorso"
                    end
                end)
            end
        end 


       
    end)
end)




local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("LocalPlayer")
 Section:NewSlider("Walkspeed", "Changes Walkspeed", 250, 0, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)







local Tab = Window:NewTab("Animations")
local Section = Tab:NewSection("Animation Changer (FE)")
Section:NewButton("TryHard Animations", "TryHard Animations!", function()
    print("Clicked")
 while true do
    wait(1)
    for i, player in ipairs(game.Players:GetChildren()) do
    local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
game.Players.LocalPlayer.Character.Humanoid.Jump = false
    end
end
end)

Section:NewButton("Animation Changer (Gui)", "Animation Changer GUI", function()
    print("Clicked")
    
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/vKoku/animationchanger/main/kaz/koku'),true))()
end)

local Tab = Window:NewTab("Settings")
local Section = Tab:NewSection("Settings")



local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("Made By unknownn#6188", "Made By unknownn6188", function()
    print("Clicked")
end)
