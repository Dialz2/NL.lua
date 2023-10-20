-- // UI LIB \\ --
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

-- // UI NOTIF \\ --
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Infinity Hub",
	Text = "Ninja Legends... Loaded !"
})

-- // UI WINDOW \\ --
local window = DrRayLibrary:Load("Infinity Hub | Ninja Legands", "rbxassetid://7733964640")

-- // UI TABS \\ --
local main = DrRayLibrary.newTab("Main", "ImageIdHere")
local misc = DrRayLibrary.newTab("Misc", "ImageIdHere")
local settings = DrRayLibrary.newTab("Settings", "ImageHere")
local credits = DrRayLibrary.newTab("Credits", "ImageHere")

-- // GAME DATA \\ --
local ranks = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()) do
   table.insert(ranks,tostring(v))
end
local teleports = {}
for i,v in pairs(game:GetService("Workspace").areaTeleportParts:GetChildren()) do
   table.insert(teleports,tostring(v))
end

-- // UI MAIN \\ --
main.newToggle("Auto Swing", "Swings your sword by itself", false, function(aa)
    if aa then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
             local ohString1 = "swingKatana"
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(ohString1)
          end
    else
        _G.loop = false
    end
end)

main.newToggle("Auto Sell", "Allows you to sell on your own", false, function(bb)
    if bb then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
             game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner.CFrame = CFrame.new(50,50,50)
       game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
          end
    else
        _G.loop = false
    end
end)

main.newToggle("Auto Buy Swords", "Buy as many swords as possible ", false, function(cc)
    if cc then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
             local ohString1 = "buyAllSwords"
               local ohString2 = "Blazing Vortex Island"
               game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(ohString1, ohString2)
          end
    else
        _G.loop = false
    end
end)

main.newToggle("Auto Buy Belts", "Buy as many belts as possible ", false, function(dd)
    if dd then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
             local ohString1 = "buyAllBelts"
local ohString2 = "Blazing Vortex Island"
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(ohString1, ohString2)
          end
    else
        _G.loop = false
    end
end)

main.newToggle("Auto Buy Skills", "Buy as many skills as possible ", false, function(ff)
    if ff then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
             local ohString1 = "buyAllSkills"
   local ohString2 = "Blazing Vortex Island"
   game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(ohString1, ohString2)
          end
    else
        _G.loop = false
    end
end)

main.newToggle("Auto Buy Ranks", "Buy as many ranks as possible ", false, function(ee)
    if ee then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
             for i = 1,#ranks do
                   local ohString1 = "buyRank"
                   local ohString2 = ranks[i]
                   game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(ohString1, ohString2)
                   end
          end
    else
        _G.loop = false
    end
end)

-- // UI MISC \\ --
misc.newToggle("Auto Hoops", "Allows you to take all the hoops", false, function(gg)
    if gg then
        _G.loop = true
        while _G.loop == true do wait()
                     task.wait()
             for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
                   v.touchPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                   wait(0.02)
                   end
          end
    else
        _G.loop = false
    end
end)

misc.newButton("Auto Chests", "Open every island safe", function()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                       if string.match(v.Name,"Chest") and v:IsA("Model") then
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.circleOuter.Position)
                           game.Players.LocalPlayer.Character.Humanoid.Jump = true
                           wait(0.5)
                       end
                   end
end)

misc.newButton("Discover all Islands", "Unlock all islands", function()
    for i = 1,#teleports do
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").areaTeleportParts[teleports[i]].Position)
               wait()
                   end
end)

misc.newInput("Enter Numbers :", "Your walk speed ", function(ws)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end)

misc.newInput("Enter Numbers :", "Your jump power", function(jp)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end)

-- // UI SETTINGS \\ --
settings.newButton("Anti Afk", "Allows you to be afk and not crash", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
end)

settings.newButton("Low Graphic", "Minimizes graphics and boosts fps", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
end)

settings.newButton("RTX Graphic", "Boosts RTX graphics", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vmjZ4UY8"))() 
end)

-- // UI CREDITS \\ --
credits.newButton("Discord", "Copy the discord link", function()
    setclipboard("https://discord.com/invite/FW3JRYXXDK")
end)

credits.newButton("Creator", "dialz69", function()
    setclipboard("https://discord.com/invite/FW3JRYXXDK")
end)

credits.newButton("Scripter", "dialz69", function()
    setclipboard("https://discord.com/invite/FW3JRYXXDK")
end)

credits.newButton("Ui Design", "dialz69", function()
    setclipboard("https://discord.com/invite/FW3JRYXXDK")
end)
