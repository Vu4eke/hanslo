-- Библеотека // Дополнение

local Player = game.Players.LocalPlayer
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Основа

local Window = OrionLib:MakeWindow({Name = "JJSploit hub", HidePremium = false, SaveConfig = true, ConfigFolder = "jj_hubs"})

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

-- Страница "Blox Fruit"

local Tab = Window:MakeTab({
	Name = "Blox Fruit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("Время сервера: None")
Tab:AddButton({
    Name = "Blox Fruit Dealer",
    Callback = function()
        print("ОТКРЫВАЮ ДИЛЕРА")
        local function StartDialog(DialogName)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local DialogueController = require(ReplicatedStorage.DialogueController)
            local DialoguesList = require(ReplicatedStorage.DialoguesList)

            for Index,Dialog in pairs(DialoguesList) do
                if Dialog.Name == DialogName then -- Сравниваем имя диалога
                    DialogueController.Start(Dialog) -- Вызываем Start для экземпляра диалога
                    break -- Выходим из цикла после запуска диалога
                end
            end
        end

        StartDialog("Blox Fruit Dealer")
    end
})
Tab:AddButton({
	Name = "Advanced Blox Fruit Dealer",
	Callback = function()
		print("ОТКРЫВАЮ МИРАЖ ДИЛЕРА")
		local function StartDialog(DialogName)
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local DialogueController = require(ReplicatedStorage.DialogueController)
			local DialoguesList = require(ReplicatedStorage.DialoguesList)
			
			for Index,Dialog in pairs(DialoguesList) do
			  if tostring(Index) == DialogName then
				DialogueController.Start(DialogueController, Dialog)
			  end
			end
		  end
		  
		  StartDialog("FruitShop2")
		end    
})
Tab:AddButton({
	Name = "Sanguine Art",
	Callback = function()
		local function StartDialog(DialogName)
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local DialogueController = require(ReplicatedStorage.DialogueController)
			local DialoguesList = require(ReplicatedStorage.DialoguesList)
			
			for Index,Dialog in pairs(DialoguesList) do
			  if tostring(Index) == DialogName then
				DialogueController.Start(DialogueController, Dialog)
			  end
			end
		  end
		  
		  StartDialog("AngelQuest1") -- 1, 9
  	end    
})