-- Библеотека // Дополнение

local Player = game.Players.LocalPlayer
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Основа

local Window = OrionLib:MakeWindow({Name = "JJSploit hub", HidePremium = false, SaveConfig = false, ConfigFolder = "jj_hubs", IntroText = "Welcome to hub!"})

-- Уведомление 

OrionLib:MakeNotification({ 
	Name = "Загружено!",
	Content = "Вошли как "..Player.Name.." ",
	Image = "rbxassetid://4483345998",
	Time = 4
})

function DiscordLink()
	local discordLink = "https://discord.gg/EaVnwRb5sH"

	setclipboard(discordLink)

	OrionLib:MakeNotification({
		Name = "JJSploit hub",
		Content = "Ссылка на Discord сервер скопирована!",
		Image = "rbxassetid://4483345998",
		Time = 4
	})
end

-- Страница "Информация"

local Tab = Window:MakeTab({
	Name = "Информация",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddLabel("Создатель скрипта - Vu4eke")
Tab:AddButton({
	Name = "Discord сервер разработчика",
	Callback = function()
      	DiscordLink()
  	end    
})

local Section = Tab:AddSection({
	Name = " "
})

Tab:AddButton({
	Name = "Выключить скрипт",
	Callback = function()
		OrionLib:Destroy()
  	end    
})

-- Страница "Blox Fruit"

local Tab = Window:MakeTab({
	Name = "Blox Fruit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("Время сервера: None")
Tab:AddButton({
    Name = "TNG HUB",
    Callback = function()
        print("Injecting TNG Hub....")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tngaming123/TNGHub/main/ForPC.lua"))()
		print("Injected!")
    end
})
