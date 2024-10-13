local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() --This Will Load The Script Code
local Player = game.Players.LocalPlayer --This Will Reveal The Player Name
  local Window = OrionLib:MakeWindow({
		Name = "JJSploit hub | Key-system",
		HidePremium = false,
		SaveConfig = true,
		ConfigFolder = "jj_keysystem",
        IntroText = "Loading Script..."
}) --This Will Load The Script Hub

function MakeScriptHub()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/Vu4eke/hanslo/refs/heads/main/jjsploit_hub.lua'))() --Put The Script That Will Load If The Key Is Correct Here
end

OrionLib:MakeNotification({
	Name = "Key-System",
	Content = "Вошли как "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
}) --Notification

getgenv().Key = "OpenKey" --Put The Correct Key Here
getgenv().KeyInput = "string" --Require For The Key To Work

local Tab = Window:MakeTab({
	Name = "Key-System",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) --Making A Tab

Tab:AddTextbox({
	Name = "Ключ",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyInput = Value
	end	  
}) --You Will Enter The Key Here

Tab:AddButton({
    Name = "Проверить ключ",
    Callback = function()
        if getgenv().KeyInput == getgenv().Key then
            OrionLib:MakeNotification({
                Name = "Key-System",
                Content = "Проверка введенного вами ключа.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Правильный ключ!",
                Content = "Ключ, который вы ввели, правильный.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:Destroy()
            wait(.3)
            MakeScriptHub()
        else
           OrionLib:MakeNotification({
                Name = "Key-System",
                Content = "Проверка введенного вами ключа..",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Неверный ключ!",
                Content = "Вы ввели неверный ключ.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
}) --This Will Check The Key You Entered

Tab:AddButton({
	Name = "Скопировать ссылку на ключ",
	Callback = function()
      		setclipboard("https://discord.gg/EaVnwRb5sH") --This Will Copy The Link Of The Key
  	end    
}) 
    
OrionLib:Init() --Require If The Script Is Done