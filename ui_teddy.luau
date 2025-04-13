local Lib = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local function MakeDraggable(topbarobject, object)
	local function CustomPos(topbarobject, object)
		local Dragging = nil
		local DragInput = nil
		local DragStart = nil
		local StartPosition = nil

		local function UpdatePos(input)
			local Delta = input.Position - DragStart
			local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
			object.Position = pos
		end

		topbarobject.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						Dragging = false
					end
				end)
			end
		end)

		topbarobject.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				DragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == DragInput and Dragging then
				UpdatePos(input)
			end
		end)
	end
	CustomPos(topbarobject, object)
end
function Lib:Window()
    local UIMain = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local DropShadowHolder = Instance.new("Frame")
    local DropShadow = Instance.new("ImageLabel")
    local Top = Instance.new("Frame")
    local NameHub = Instance.new("TextLabel")
    local UIPadding = Instance.new("UIPadding")
    local Icon = Instance.new("ImageLabel")
    local TextLabel = Instance.new("TextLabel")
    local UICorner_2 = Instance.new("UICorner")
    local x = Instance.new("Frame")
    local Icon_2 = Instance.new("ImageLabel")
    local Click = Instance.new("TextButton")
    local UIStroke = Instance.new("UIStroke")
    local Naviation = Instance.new("Frame")
    local Layers = Instance.new("Frame")
    local ChannelList = Instance.new("Folder")
    local UIPageLayout = Instance.new("UIPageLayout")
    local TabFrame = Instance.new("Frame")
    local TabReal = Instance.new("Frame")
    local UIPadding_6 = Instance.new("UIPadding")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local LogoConcat = Instance.new("Frame")
    local Logoed = Instance.new("ImageLabel")
    local Nigga = Instance.new("UICorner")
    local Ngu2 = Instance.new("UIStroke")
    local Clicking = Instance.new("TextButton")

    UIMain.Name = "UIMain"
    UIMain.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    LogoConcat.Name = "LogoConcat"
    LogoConcat.Parent = UIMain
    LogoConcat.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    LogoConcat.BackgroundTransparency = 0
    LogoConcat.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LogoConcat.BorderSizePixel = 0
    LogoConcat.Position = UDim2.new(0.0890538022, 0, 0.073170729, 0)
    LogoConcat.Size = UDim2.new(0, 45, 0, 45)

    Logoed.Name = "Logoed"
    Logoed.Parent = LogoConcat
    Logoed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Logoed.BackgroundTransparency = 1.000
    Logoed.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Logoed.BorderSizePixel = 0
    Logoed.Size = UDim2.new(1, 0, 1, 0)
    Logoed.Image = "http://www.roblox.com/asset/?id=137252651947601"

    Nigga.CornerRadius = UDim.new(0, 6)
    Nigga.Name = "Nigga"
    Nigga.Parent = Logoed

    Ngu2.Name = "Ngu"
    Ngu2.Parent = Logoed
    Ngu2.Color = Color3.fromRGB(22, 22, 22)
    Ngu2.Transparency = 0.800
    Ngu2.Thickness = 2.200

    Clicking.Name = "Clicking"
    Clicking.Parent = LogoConcat
    Clicking.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Clicking.BackgroundTransparency = 1.000
    Clicking.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Clicking.BorderSizePixel = 0
    Clicking.Size = UDim2.new(1, 0, 1, 0)
    Clicking.Font = Enum.Font.SourceSans
    Clicking.Text = ""
    Clicking.TextColor3 = Color3.fromRGB(0, 0, 0)
    Clicking.TextSize = 14.000
    Clicking.Activated:Connect(function()
        if Main.Visible == true then
            Main.Visible = false
        else
            Main.Visible = true
        end
    end)
    
    Main.Name = "Main"
    Main.Parent = UIMain
    Main.Active = true
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.ClipsDescendants = true
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 450, 0, 300)
    
    UICorner.Parent = Main
    
    DropShadowHolder.Name = "DropShadowHolder"
    DropShadowHolder.Parent = Main
    DropShadowHolder.BackgroundTransparency = 1.000
    DropShadowHolder.BorderSizePixel = 0
    DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
    DropShadowHolder.ZIndex = 0
    
    DropShadow.Name = "DropShadow"
    DropShadow.Parent = DropShadowHolder
    DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    DropShadow.BackgroundTransparency = 1.000
    DropShadow.BorderSizePixel = 0
    DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropShadow.Size = UDim2.new(1, 47, 1, 47)
    DropShadow.ZIndex = 0
    DropShadow.Image = "rbxassetid://6015897843"
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.500
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
    
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    Top.BackgroundTransparency = 1.000
    Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Top.BorderSizePixel = 0
    Top.Position = UDim2.new(0, 4, 0, 4)
    Top.Size = UDim2.new(1, -8, 0, 46)
    
    NameHub.Name = "NameHub"
    NameHub.Parent = Top
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
    NameHub.BorderSizePixel = 0
    NameHub.Position = UDim2.new(0, 35, 0, 0)
    NameHub.Size = UDim2.new(0, 200, 1, 0)
    NameHub.Font = Enum.Font.GothamBold
    NameHub.Text = "Teddy Hub"
    NameHub.TextColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.TextSize = 16.000
    NameHub.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.TextXAlignment = Enum.TextXAlignment.Left
    
    UIPadding.Parent = NameHub
    UIPadding.PaddingLeft = UDim.new(0, 15)
    
    Icon.Name = "Icon"
    Icon.Parent = NameHub
    Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon.BackgroundTransparency = 1.000
    Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon.BorderSizePixel = 0
    Icon.Position = UDim2.new(0, -52, 0, 1)
    Icon.Size = UDim2.new(0, 50, 0, 50)
    Icon.Image = "http://www.roblox.com/asset/?id=137252651947601"
    
    TextLabel.Parent = NameHub
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 80, 0, 3)
    TextLabel.Size = UDim2.new(0, 100, 0, 20)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Text = "(FREEMIUM)"
    TextLabel.TextColor3 = Color3.fromRGB(243, 255, 23)
    TextLabel.TextSize = 9.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    UICorner_2.Parent = Top
    
    x.Name = "x"
    x.Parent = Top
    x.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    x.BackgroundTransparency = 1.000
    x.BorderColor3 = Color3.fromRGB(0, 0, 0)
    x.BorderSizePixel = 0
    x.Position = UDim2.new(1, -22, 0, 2)
    x.Size = UDim2.new(0, 20, 0, 20)
    
    Icon_2.Name = "Icon"
    Icon_2.Parent = x
    Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon_2.BackgroundTransparency = 1.000
    Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon_2.BorderSizePixel = 0
    Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    Icon_2.Size = UDim2.new(0, 20, 0, 20)
    Icon_2.Image = "http://www.roblox.com/asset/?id=103530807090762"
    
    Click.Name = "Click"
    Click.Parent = x
    Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Click.BackgroundTransparency = 1.000
    Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Click.BorderSizePixel = 0
    Click.Size = UDim2.new(1, 0, 1, 0)
    Click.Font = Enum.Font.SourceSans
    Click.Text = ""
    Click.TextColor3 = Color3.fromRGB(0, 0, 0)
    Click.TextSize = 14.000
    
    UIStroke.Parent = Main
    UIStroke.Color = Color3.fromRGB(55, 55, 55)
    UIStroke.Thickness = 3.400
    
    Naviation.Name = "Naviation"
    Naviation.Parent = Main
    Naviation.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Naviation.BackgroundTransparency = 1.000
    Naviation.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Naviation.BorderSizePixel = 0
    Naviation.Position = UDim2.new(0, 140, 0, 62)
    Naviation.Size = UDim2.new(1, -140, 1, -62)
    
    Layers.Name = "Layers"
    Layers.Parent = Naviation
    Layers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Layers.BackgroundTransparency = 1.000
    Layers.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Layers.BorderSizePixel = 0
    Layers.ClipsDescendants = true
    Layers.Size = UDim2.new(1, 0, 1, 0)
    
    ChannelList.Name = "ChannelList"
    ChannelList.Parent = Layers

    UIPageLayout.Parent = ChannelList
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingStyle = Enum.EasingStyle.Back
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.Padding = UDim.new(0, 5)
    UIPageLayout.ScrollWheelInputEnabled = false
    UIPageLayout.TouchInputEnabled = false
    UIPageLayout.TweenTime = 0.300
    UIPageLayout.FillDirection = Enum.FillDirection.Vertical

    TabFrame.Name = "TabFrame"
    TabFrame.Parent = Main
    TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabFrame.BackgroundTransparency = 1.000
    TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabFrame.BorderSizePixel = 0
    TabFrame.Position = UDim2.new(0, 0, 0, 57)
    TabFrame.Size = UDim2.new(0, 140, 1, -57)

    TabReal.Name = "TabReal"
    TabReal.Parent = TabFrame
    TabReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabReal.BackgroundTransparency = 1.000
    TabReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabReal.BorderSizePixel = 0
    TabReal.Size = UDim2.new(1, 0, 1, 0)
    
    UIPadding_6.Parent = TabReal
    UIPadding_6.PaddingBottom = UDim.new(0, 7)
    UIPadding_6.PaddingLeft = UDim.new(0, 7)
    UIPadding_6.PaddingRight = UDim.new(0, 7)
    UIPadding_6.PaddingTop = UDim.new(0, 7)
    
    UIListLayout_3.Parent = TabReal
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0, 8)
    MakeDraggable(Top, Main)
    local Counts = 0
    local Tab = {}
    function Tab:AddTab(tabname)
        local Tab1 = Instance.new("Frame")
        local UICorner_10 = Instance.new("UICorner")
        local Title_6 = Instance.new("TextLabel")
        local UIPadding_8 = Instance.new("UIPadding")
        local Click_3 = Instance.new("TextButton")
        local Channel = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local UIPadding_2 = Instance.new("UIPadding")

        Tab1.Name = "Tab1"
        Tab1.Parent = TabReal
        Tab1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Tab1.BackgroundTransparency = 0.350
        Tab1.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Tab1.BorderSizePixel = 0
        Tab1.Size = UDim2.new(1, 0, 0, 35)
        
        UICorner_10.CornerRadius = UDim.new(0, 6)
        UICorner_10.Parent = Tab1
        
        Title_6.Name = "Title"
        Title_6.Parent = Tab1
        Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title_6.BackgroundTransparency = 1.000
        Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Title_6.BorderSizePixel = 0
        Title_6.Size = UDim2.new(1, 0, 1, 0)
        Title_6.Font = Enum.Font.GothamBold
        Title_6.Text = tabname
        Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title_6.TextSize = 14.000
        Title_6.TextXAlignment = Enum.TextXAlignment.Left
        
        UIPadding_8.Parent = Title_6
        UIPadding_8.PaddingLeft = UDim.new(0, 12)
        
        Click_3.Name = "Click"
        Click_3.Parent = Tab1
        Click_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Click_3.BackgroundTransparency = 1.000
        Click_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Click_3.BorderSizePixel = 0
        Click_3.Size = UDim2.new(1, 0, 1, 0)
        Click_3.Font = Enum.Font.SourceSans
        Click_3.Text = ""
        Click_3.TextColor3 = Color3.fromRGB(0, 0, 0)
        Click_3.TextSize = 14.000

        Channel.Name = "Channel"
        Channel.Parent = ChannelList
        Channel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Channel.BackgroundTransparency = 1.000
        Channel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Channel.BorderSizePixel = 0
        Channel.Position = UDim2.new(0, 140, 0, 0)
        Channel.Size = UDim2.new(1, 0, 1, 0)
        Channel.LayoutOrder = Counts
        
        UIListLayout.Parent = Channel
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 9)
        
        UIPadding_2.Parent = Channel
        UIPadding_2.PaddingBottom = UDim.new(0, 7)
        UIPadding_2.PaddingLeft = UDim.new(0, 7)
        UIPadding_2.PaddingRight = UDim.new(0, 7)
        UIPadding_2.PaddingTop = UDim.new(0, 7)
        Click_3.Activated:Connect(function()
            for _, v in pairs(TabFrame:GetChildren()) do
                for r, child in pairs(v:GetChildren()) do
                    if child:IsA("Frame") then
                        child.Title.TextColor3 = Color3.fromRGB(188, 188, 188)
                    end
                end
            end
            for _, v in pairs(TabFrame:GetChildren()) do
                for r, child in pairs(v:GetChildren()) do
                    if child:IsA("TextLabel") then
                        child.TextColor3 = Color3.fromRGB(188, 188, 188)
                    end
                end
            end
            UIPageLayout:JumpToIndex(Channel.LayoutOrder)
            Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
        end)
        Counts = Counts + 1
        local Fe = {}
        function Fe:AddStatus(status, desc)
            local StatusLod = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local UIStroke_2 = Instance.new("UIStroke")
            local Icon_3 = Instance.new("ImageLabel")
            local UICorner_4 = Instance.new("UICorner")
            local UIStroke_3 = Instance.new("UIStroke")
            local Title = Instance.new("TextLabel")
            local Desc = Instance.new("TextLabel")
            local UIPadding_3 = Instance.new("UIPadding")
            local Check = Instance.new("ImageLabel")
            local StatusFunc = {}

            StatusLod.Name = "StatusLod"
            StatusLod.Parent = Channel
            StatusLod.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
            StatusLod.BorderColor3 = Color3.fromRGB(0, 0, 0)
            StatusLod.BorderSizePixel = 0
            StatusLod.Size = UDim2.new(1, 0, 0, 40)
            
            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = StatusLod
            
            UIStroke_2.Parent = StatusLod
            UIStroke_2.Color = Color3.fromRGB(100, 100, 100)
            UIStroke_2.Transparency = 0.700
            
            Icon_3.Name = "Icon"
            Icon_3.Parent = StatusLod
            Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon_3.BackgroundTransparency = 1.000
            Icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Icon_3.BorderSizePixel = 0
            Icon_3.Position = UDim2.new(0, 5, 0, 5)
            Icon_3.Size = UDim2.new(0, 32, 0, 32)
            Icon_3.Image = "http://www.roblox.com/asset/?id=109931451264820"
            
            UICorner_4.CornerRadius = UDim.new(1, 0)
            UICorner_4.Parent = Icon_3
            
            UIStroke_3.Parent = Icon_3
            UIStroke_3.Color = Color3.fromRGB(100, 100, 100)
            
            Title.Name = "Title"
            Title.Parent = StatusLod
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title.BorderSizePixel = 0
            Title.ClipsDescendants = true
            Title.Position = UDim2.new(0, 50, 0, 0)
            Title.Size = UDim2.new(1, -50, 0, 20)
            Title.Font = Enum.Font.GothamBold
            Title.Text = status
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title.TextSize = 14.000
            Title.TextXAlignment = Enum.TextXAlignment.Left
            
            Desc.Name = "Desc"
            Desc.Parent = StatusLod
            Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Desc.BackgroundTransparency = 1.000
            Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Desc.BorderSizePixel = 0
            Desc.ClipsDescendants = true
            Desc.Position = UDim2.new(0, 50, 0, 18)
            Desc.Size = UDim2.new(1, -50, 1, -18)
            Desc.Font = Enum.Font.GothamBold
            Desc.Text = desc
            Desc.TextColor3 = Color3.fromRGB(144, 144, 144)
            Desc.TextSize = 11.000
            Desc.TextXAlignment = Enum.TextXAlignment.Left
            Desc.TextYAlignment = Enum.TextYAlignment.Top
            
            UIPadding_3.Parent = Desc
            UIPadding_3.PaddingBottom = UDim.new(0, 3)
            
            Check.Name = "Check"
            Check.Parent = StatusLod
            Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Check.BackgroundTransparency = 1.000
            Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Check.BorderSizePixel = 0
            Check.Position = UDim2.new(1, -37, 0, 5)
            Check.Size = UDim2.new(0, 28, 0, 28)
            Check.Image = "http://www.roblox.com/asset/?id=128558711062284"
            function StatusFunc:SetStatus(s)
                if s == true then
                    Check.Image = "http://www.roblox.com/asset/?id=94478022206698"
                else
                    Check.Image = "http://www.roblox.com/asset/?id=128558711062284"
                end
            end
            return StatusFunc
        end
        function Fe:AddDiscordLink()
            local Discord = Instance.new("Frame")
            local UICorner_7 = Instance.new("UICorner")
            local UIStroke_6 = Instance.new("UIStroke")
            local Icon_5 = Instance.new("ImageLabel")
            local Title_3 = Instance.new("TextLabel")
            local ClickJoin = Instance.new("Frame")
            local UICorner_8 = Instance.new("UICorner")
            local Title_4 = Instance.new("TextLabel")
            local HATSUIZZ = Instance.new("TextButton")

            Discord.Name = "Discord"
            Discord.Parent = Channel
            Discord.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
            Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Discord.BorderSizePixel = 0
            Discord.Size = UDim2.new(1, 0, 0, 40)
            
            UICorner_7.CornerRadius = UDim.new(0, 4)
            UICorner_7.Parent = Discord
            
            UIStroke_6.Parent = Discord
            UIStroke_6.Color = Color3.fromRGB(100, 100, 100)
            UIStroke_6.Transparency = 0.700
            
            Icon_5.Name = "Icon"
            Icon_5.Parent = Discord
            Icon_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon_5.BackgroundTransparency = 1.000
            Icon_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Icon_5.BorderSizePixel = 0
            Icon_5.Position = UDim2.new(0, 3, 0, 3)
            Icon_5.Size = UDim2.new(0, 40, 0, 40)
            Icon_5.Image = "http://www.roblox.com/asset/?id=137252651947601"
            
            Title_3.Name = "Title"
            Title_3.Parent = Discord
            Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_3.BackgroundTransparency = 1.000
            Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title_3.BorderSizePixel = 0
            Title_3.ClipsDescendants = true
            Title_3.Position = UDim2.new(0, 50, 0, 0)
            Title_3.Size = UDim2.new(1, -50, 0, 20)
            Title_3.Font = Enum.Font.GothamBold
            Title_3.Text = "Discord : Teddy Hub"
            Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title_3.TextSize = 14.000
            Title_3.TextXAlignment = Enum.TextXAlignment.Left
            
            ClickJoin.Name = "ClickJoin"
            ClickJoin.Parent = Discord
            ClickJoin.BackgroundColor3 = Color3.fromRGB(44, 255, 11)
            ClickJoin.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ClickJoin.BorderSizePixel = 0
            ClickJoin.Position = UDim2.new(0, 50, 0, 23)
            ClickJoin.Size = UDim2.new(1, -57, 0, 12)
            
            UICorner_8.CornerRadius = UDim.new(0, 4)
            UICorner_8.Parent = ClickJoin
            
            Title_4.Name = "Title"
            Title_4.Parent = ClickJoin
            Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_4.BackgroundTransparency = 1.000
            Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title_4.BorderSizePixel = 0
            Title_4.ClipsDescendants = true
            Title_4.Size = UDim2.new(1, 0, 1, 0)
            Title_4.Font = Enum.Font.GothamBold
            Title_4.Text = "Discord : Teddy Hub"
            Title_4.TextColor3 = Color3.fromRGB(0, 0, 0)
            Title_4.TextSize = 11.000
            Title_4.TextWrapped = true
            
            HATSUIZZ.Name = "HAT SUIZZ"
            HATSUIZZ.Parent = ClickJoin
            HATSUIZZ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            HATSUIZZ.BackgroundTransparency = 1.000
            HATSUIZZ.BorderColor3 = Color3.fromRGB(0, 0, 0)
            HATSUIZZ.BorderSizePixel = 0
            HATSUIZZ.Size = UDim2.new(1, 0, 1, 0)
            HATSUIZZ.Font = Enum.Font.SourceSans
            HATSUIZZ.Text = ""
            HATSUIZZ.TextColor3 = Color3.fromRGB(0, 0, 0)
            HATSUIZZ.TextSize = 14.000
        end
        return Fe
    end
    return Tab
end
return Lib
