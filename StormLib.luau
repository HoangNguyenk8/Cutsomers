local RedzLib = {}
local UserInputService = game:GetService('UserInputService')
local Mouse = game.Players.LocalPlayer:GetMouse()
local TweenService = game:GetService("TweenService")
local function CustomSize(object)
    local Dragging = false
    local DragInput = nil
    local DragStart = nil
    local StartSize = nil
    local maxSizeX = object.Size.X.Offset
    local maxSizeY = object.Size.Y.Offset
    object.Size = UDim2.new(0, maxSizeX, 0, maxSizeY)
    local changesizeobject = Instance.new("Frame");

    changesizeobject.AnchorPoint = Vector2.new(1, 1)
    changesizeobject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    changesizeobject.BackgroundTransparency = 0.9990000128746033
    changesizeobject.BorderColor3 = Color3.fromRGB(0, 0, 0)
    changesizeobject.BorderSizePixel = 0
    changesizeobject.Position = UDim2.new(1, 20, 1, 20)
    changesizeobject.Size = UDim2.new(0, 40, 0, 40)
    changesizeobject.Name = "changesizeobject"
    changesizeobject.Parent = object

    local function UpdateSize(input)
        local Delta = input.Position - DragStart
        local newWidth = StartSize.X.Offset + Delta.X
        local newHeight = StartSize.Y.Offset + Delta.Y
        newWidth = math.max(newWidth, maxSizeX)
        newHeight = math.max(newHeight, maxSizeY)
        local Tween = TweenService:Create(object, TweenInfo.new(0.1), {Size = UDim2.new(0, newWidth, 0, newHeight)})
        Tween:Play()
    end

    changesizeobject.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Dragging = true
            DragStart = input.Position
            StartSize = object.Size
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end
            end)
        end
    end)

    changesizeobject.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            DragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == DragInput and Dragging then
            UpdateSize(input)
        end
    end)
end
function MakeDraggable(topbarobject, object)
	local function CustomPos(topbarobject, object)
		local Dragging = nil
		local DragInput = nil
		local DragStart = nil
		local StartPosition = nil

		local function UpdatePos(input)
			local Delta = input.Position - DragStart
			local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
            TweenService:Create(object, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = pos}):Play()
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
function MouseTo(object)
    object.MouseEnter:Connect(function()
        object.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    end)
    object.MouseLeave:Connect(function()
        object.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    end)
end
function RedzLib:AddWindow(co)
    co = co or {}
    co.Title = co.Title or "Redz Hub - BloxFruits"
    co.Description = co.Description or ""
    co.IconHub = co.IconHub or ""

    local MainScreen = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Layouts = Instance.new("Frame")
    local RealLayouts = Instance.new("Frame")
    local ChannelList = Instance.new("Folder")
    local Top = Instance.new("Frame")
    local NameHub = Instance.new("TextLabel")
    local UIPadding_14 = Instance.new("UIPadding")
    local Desc_2 = Instance.new("TextLabel")
    local UIPadding_15 = Instance.new("UIPadding")
    local Nigger = Instance.new("Frame")
    local Minized = Instance.new("Frame")
    local Icon_2 = Instance.new("ImageLabel")
    local Click1 = Instance.new("TextButton")
    local Closed = Instance.new("Frame")
    local Icon2 = Instance.new("ImageLabel")
    local Click2 = Instance.new("TextButton")
    local Skibdidi = Instance.new("Frame")
    local Click7_2 = Instance.new("TextButton")
    local UIPageLayout = Instance.new("UIPageLayout")
    local TabFramer = Instance.new("Frame")
    local TabScrolling = Instance.new("ScrollingFrame")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local UIPadding_11 = Instance.new("UIPadding")

    MainScreen.Name = "MainScreen"
    MainScreen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    Main.Name = "Main"
    Main.Parent = MainScreen
    Main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    Main.BackgroundTransparency = 0.030
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.292801559, 0, 0.188931301, 0)
    Main.Size = UDim2.new(0, 450, 0, 325)
    
    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Main
    
    Layouts.Name = "Layouts"
    Layouts.Parent = Main
    Layouts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Layouts.BackgroundTransparency = 1.000
    Layouts.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Layouts.BorderSizePixel = 0
    Layouts.Position = UDim2.new(0, 140, 0, 40)
    Layouts.Size = UDim2.new(1, -140, 1, -40)
    
    RealLayouts.Name = "RealLayouts"
    RealLayouts.Parent = Layouts
    RealLayouts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    RealLayouts.BackgroundTransparency = 1.000
    RealLayouts.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RealLayouts.BorderSizePixel = 0
    RealLayouts.ClipsDescendants = true
    RealLayouts.Size = UDim2.new(1, 0, 1, 0)
    
    ChannelList.Name = "Channel List"
    ChannelList.Parent = RealLayouts

    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Top.BackgroundTransparency = 1.000
    Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Top.BorderSizePixel = 0
    Top.Size = UDim2.new(1, 0, 0, 40)
    
    NameHub.Name = "NameHub"
    NameHub.Parent = Top
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
    NameHub.BorderSizePixel = 0
    NameHub.Size = UDim2.new(0, 200, 1, 0)
    NameHub.Font = Enum.Font.GothamBold
    NameHub.Text = co.Title
    NameHub.TextColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.TextSize = 12.000
    NameHub.TextXAlignment = Enum.TextXAlignment.Left
    
    UIPadding_14.Parent = NameHub
    UIPadding_14.PaddingBottom = UDim.new(0, 5)
    UIPadding_14.PaddingLeft = UDim.new(0, 12)
    
    Desc_2.Name = "Desc"
    Desc_2.Parent = Top
    Desc_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Desc_2.BackgroundTransparency = 1.000
    Desc_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Desc_2.BorderSizePixel = 0
    Desc_2.Position = UDim2.new(0, NameHub.TextBounds.X + 42, 0, 0)
    Desc_2.Size = UDim2.new(0, 200, 1, 0)
    Desc_2.Font = Enum.Font.GothamBold
    Desc_2.Text = co.Description
    Desc_2.TextColor3 = Color3.fromRGB(100, 100, 100)
    Desc_2.TextSize = 11.000
    Desc_2.TextXAlignment = Enum.TextXAlignment.Left
    
    UIPadding_15.Parent = Desc_2
    UIPadding_15.PaddingBottom = UDim.new(0, 5)
    
    Nigger.Name = "Nigger"
    Nigger.Parent = Top
    Nigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Nigger.BackgroundTransparency = 1.000
    Nigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Nigger.BorderSizePixel = 0
    Nigger.Position = UDim2.new(1, -70, 0, 0)
    Nigger.Size = UDim2.new(0, 70, 1, 0)
    
    Minized.Name = "Minized"
    Minized.Parent = Nigger
    Minized.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Minized.BackgroundTransparency = 1.000
    Minized.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Minized.BorderSizePixel = 0
    Minized.Size = UDim2.new(0.5, 0, 1, 0)
    
    Icon_2.Name = "Icon"
    Icon_2.Parent = Minized
    Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon_2.BackgroundTransparency = 1.000
    Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon_2.BorderSizePixel = 0
    Icon_2.Position = UDim2.new(0.5, 0, 0.400000006, 0)
    Icon_2.Size = UDim2.new(0, 14, 0, 20)
    Icon_2.Image = "rbxassetid://98810603859957"
    
    Click1.Name = "Click1"
    Click1.Parent = Minized
    Click1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Click1.BackgroundTransparency = 1.000
    Click1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Click1.BorderSizePixel = 0
    Click1.Size = UDim2.new(1, 0, 1, 0)
    Click1.Font = Enum.Font.SourceSans
    Click1.Text = ""
    Click1.TextColor3 = Color3.fromRGB(0, 0, 0)
    Click1.TextSize = 14.000
    Click1.Activated:Connect(function()
        Main.Visible = false
    end)
    
    Closed.Name = "Closed"
    Closed.Parent = Nigger
    Closed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Closed.BackgroundTransparency = 1.000
    Closed.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Closed.BorderSizePixel = 0
    Closed.Position = UDim2.new(0.5, 0, 0, 0)
    Closed.Size = UDim2.new(0.5, 0, 1, 0)
    
    Icon2.Name = "Icon2"
    Icon2.Parent = Closed
    Icon2.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon2.BackgroundTransparency = 1.000
    Icon2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon2.BorderSizePixel = 0
    Icon2.Position = UDim2.new(0.5, 0, 0.400000006, 0)
    Icon2.Size = UDim2.new(0, 17, 0, 17)
    Icon2.Image = "rbxassetid://103530807090762"
    
    Click2.Name = "Click2"
    Click2.Parent = Closed
    Click2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Click2.BackgroundTransparency = 1.000
    Click2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Click2.BorderSizePixel = 0
    Click2.Size = UDim2.new(1, 0, 1, 0)
    Click2.Font = Enum.Font.SourceSans
    Click2.Text = ""
    Click2.TextColor3 = Color3.fromRGB(0, 0, 0)
    Click2.TextSize = 14.000
    Click2.Activated:Connect(function()
        MainScreen:Destroy()
    end)
    
    Skibdidi.Name = "Skibdidi"
    Skibdidi.Parent = Main
    Skibdidi.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Skibdidi.BackgroundTransparency = 1.000
    Skibdidi.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Skibdidi.BorderSizePixel = 0
    Skibdidi.Size = UDim2.new(1, -100, 1, 0)
    Skibdidi.Visible = false
    
    Click7_2.Name = "Click7"
    Click7_2.Parent = Skibdidi
    Click7_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Click7_2.BackgroundTransparency = 1.000
    Click7_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Click7_2.BorderSizePixel = 0
    Click7_2.Size = UDim2.new(1, 0, 1, 0)
    Click7_2.Font = Enum.Font.SourceSans
    Click7_2.Text = ""
    Click7_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    Click7_2.TextSize = 14.000

    UIPageLayout.Parent = ChannelList
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingStyle = Enum.EasingStyle.Sine
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.TouchInputEnabled = false
    UIPageLayout.TweenTime = 0.300
    
    TabFramer.Name = "TabFramer"
    TabFramer.Parent = Main
    TabFramer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabFramer.BackgroundTransparency = 1.000
    TabFramer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabFramer.BorderSizePixel = 0
    TabFramer.Position = UDim2.new(0, 0, 0, 40)
    TabFramer.Size = UDim2.new(0, 140, 1, -40)
    
    TabScrolling.Name = "Tab Scrolling"
    TabScrolling.Parent = TabFramer
    TabScrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabScrolling.BackgroundTransparency = 1.000
    TabScrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabScrolling.BorderSizePixel = 0
    TabScrolling.Size = UDim2.new(1, 0, 1, 0)
    TabScrolling.ScrollBarThickness = 0
    game:GetService("RunService").Stepped:Connect(function()
        TabScrolling.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_3.AbsoluteContentSize.Y + 15)
    end)
    UIListLayout_3.Parent = TabScrolling
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0, 6)
    
    UIPadding_11.Parent = TabScrolling
    UIPadding_11.PaddingBottom = UDim.new(0, 8)
    UIPadding_11.PaddingLeft = UDim.new(0, 8)
    UIPadding_11.PaddingRight = UDim.new(0, 8)
    UIPadding_11.PaddingTop = UDim.new(0, 8)
    CustomSize(Main)
    MakeDraggable(Top, Main)
    local Counts = 0
    local Tab = {}
    function Tab:AddTab(cf)
        cf.Name = cf.Name or "Tab"
        cf.Icon = cf.Icon or ""
        local TabDisable = Instance.new("Frame")
        local UICorner_24 = Instance.new("UICorner")
        local Title_8 = Instance.new("TextLabel")
        local UIPadding_13 = Instance.new("UIPadding")
        local Click3_2 = Instance.new("TextButton")
        local Icon3_2 = Instance.new("ImageLabel")
        local ChannelReal = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")

        TabDisable.Name = "Tab Disable"
        TabDisable.Parent = TabScrolling
        TabDisable.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
        TabDisable.BackgroundTransparency = 0.030
        TabDisable.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TabDisable.BorderSizePixel = 0
        TabDisable.Size = UDim2.new(1, 0, 0, 28)
        
        UICorner_24.CornerRadius = UDim.new(0, 6)
        UICorner_24.Parent = TabDisable
        
        Title_8.Name = "Title"
        Title_8.Parent = TabDisable
        Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title_8.BackgroundTransparency = 1.000
        Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Title_8.BorderSizePixel = 0
        Title_8.Position = UDim2.new(0, 30, 0, 0)
        Title_8.Size = UDim2.new(1, -30, 1, 0)
        Title_8.Font = Enum.Font.GothamBold
        Title_8.Text = cf.Name
        Title_8.TextColor3 = Color3.fromRGB(188, 188, 188)
        Title_8.TextSize = 12.000
        Title_8.TextXAlignment = Enum.TextXAlignment.Left
        
        UIPadding_13.Parent = Title_8
        UIPadding_13.PaddingLeft = UDim.new(0, 8)
        
        Click3_2.Name = "Click3"
        Click3_2.Parent = TabDisable
        Click3_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Click3_2.BackgroundTransparency = 1.000
        Click3_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Click3_2.BorderSizePixel = 0
        Click3_2.Size = UDim2.new(1, 0, 1, 0)
        Click3_2.Font = Enum.Font.SourceSans
        Click3_2.Text = ""
        Click3_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        Click3_2.TextSize = 14.000
        
        Icon3_2.Name = "Icon3"
        Icon3_2.Parent = TabDisable
        Icon3_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Icon3_2.BackgroundTransparency = 1.000
        Icon3_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Icon3_2.BorderSizePixel = 0
        Icon3_2.Position = UDim2.new(0, 15, 0, 5)
        Icon3_2.Size = UDim2.new(0, 16, 0, 16)
        Icon3_2.Image = cf.Icon
        Icon3_2.ImageColor3 = Color3.fromRGB(188, 188, 188)
        ChannelReal.Name = "Channel Real"
        ChannelReal.Parent = ChannelList
        ChannelReal.AnchorPoint = Vector2.new(0.5, 0.5)
        ChannelReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ChannelReal.BackgroundTransparency = 1.000
        ChannelReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ChannelReal.BorderSizePixel = 0
        ChannelReal.Size = UDim2.new(1, -3, 1, 0)
        ChannelReal.ScrollBarImageColor3 = Color3.fromRGB(144, 144, 144)
        ChannelReal.ScrollBarThickness = 2
        ChannelReal.LayoutOrder = Counts
        game:GetService("RunService").Stepped:Connect(function()
            ChannelReal.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 15)
        end)
        
        UIListLayout.Parent = ChannelReal
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 8)
        
        UIPadding.Parent = ChannelReal
        UIPadding.PaddingBottom = UDim.new(0, 8)
        UIPadding.PaddingLeft = UDim.new(0, 8)
        UIPadding.PaddingRight = UDim.new(0, 12)
        UIPadding.PaddingTop = UDim.new(0, 8)
        if Counts == 0 then
            local Circle = Instance.new("Frame")
            local UICorner_23 = Instance.new("UICorner")
            Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
            Icon3_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
            Circle.Name = "Circle"
            Circle.Parent = TabDisable
            Circle.BackgroundColor3 = Color3.fromRGB(255, 37, 41)
            Circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Circle.BorderSizePixel = 0
            Circle.Position = UDim2.new(0, 2, 0, 6)
            Circle.Size = UDim2.new(0, 4, 0, 16)
            Circle.ZIndex = 2
            UICorner_23.CornerRadius = UDim.new(0, 4)
            UICorner_23.Parent = Circle
        end
        Click3_2.Activated:Connect(function()
            for _, v in pairs(TabScrolling:GetChildren()) do
				for c, frame in pairs(v:GetChildren()) do
					if frame.Name == "Circle" then
						FrameChoose = frame
						break
					end
				end
			end
            if FrameChoose ~= nil then
                for r, v in pairs(TabScrolling:GetChildren()) do
                    if v:IsA('Frame') then
                        for _, n in pairs(v:GetChildren()) do
                            if n:IsA("TextLabel") then
                                TweenService:Create(n, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(188, 188, 188)}):Play()
                            end
                            if n:IsA("ImageLabel") then
                                TweenService:Create(n, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = Color3.fromRGB(188, 188, 188)}):Play()
                            end
                        end
                    end
                end
                TweenService:Create(Title_8, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                TweenService:Create(Icon3_2, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = Color3.fromRGB(188, 188, 188)}):Play()
                TweenService:Create(FrameChoose, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0, 7 + (32 * ChannelReal.LayoutOrder))}):Play()
                UIPageLayout:JumpToIndex(ChannelReal.LayoutOrder)
            end
        end)
        Counts = Counts + 1
        local Fe = {}
        function Fe:AddSection(cc)
            local Section = Instance.new("TextLabel")
            local UIPadding_10 = Instance.new("UIPadding")

            Section.Name = "Section"
            Section.Parent = ChannelReal
            Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Section.BackgroundTransparency = 1.000
            Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Section.BorderSizePixel = 0
            Section.Size = UDim2.new(1, 0, 0, 15)
            Section.Font = Enum.Font.GothamBold
            Section.Text = cc
            Section.TextColor3 = Color3.fromRGB(255, 255, 255)
            Section.TextSize = 16.000
            Section.TextXAlignment = Enum.TextXAlignment.Left
            
            UIPadding_10.Parent = Section
            UIPadding_10.PaddingLeft = UDim.new(0, 4)
        end
        function Fe:AddInfo(cfinfo)
            cfinfo = cfinfo or {}
            cfinfo.Name = cfinfo.Name or ""
            cfinfo.Description = cfinfo.Description or ""
            cfinfo.Logo = cfinfo.Logo or ""

            local Info = Instance.new("Frame")
            local UICorner_9 = Instance.new("UICorner")
            local UIStroke_6 = Instance.new("UIStroke")
            local AccountImg = Instance.new("Frame")
            local UICorner_10 = Instance.new("UICorner")
            local UIStroke_7 = Instance.new("UIStroke")
            local Logo = Instance.new("ImageLabel")
            local UICorner_11 = Instance.new("UICorner")
            local DevName = Instance.new("TextLabel")
            local Desc = Instance.new("TextLabel")

            Info.Name = "Info"
            Info.Parent = ChannelReal
            Info.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
            Info.BackgroundTransparency = 0.120
            Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Info.BorderSizePixel = 0
            Info.Size = UDim2.new(1, 0, 0, 50)
            
            UICorner_9.CornerRadius = UDim.new(0, 5)
            UICorner_9.Parent = Info
            
            UIStroke_6.Parent = Info
            UIStroke_6.Color = Color3.fromRGB(40, 40, 40)
            UIStroke_6.Transparency = 0.350
            
            AccountImg.Name = "AccountImg"
            AccountImg.Parent = Info
            AccountImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            AccountImg.BackgroundTransparency = 1.000
            AccountImg.BorderColor3 = Color3.fromRGB(0, 0, 0)
            AccountImg.BorderSizePixel = 0
            AccountImg.Position = UDim2.new(0, 5, 0, 3)
            AccountImg.Size = UDim2.new(0, 42, 0, 42)
            
            UICorner_10.CornerRadius = UDim.new(1, 0)
            UICorner_10.Parent = AccountImg
            
            UIStroke_7.Parent = AccountImg
            UIStroke_7.Color = Color3.fromRGB(55, 55, 55)
            UIStroke_7.Thickness = 2.000
            
            Logo.Name = "Logo"
            Logo.Parent = AccountImg
            Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Logo.BackgroundTransparency = 1.000
            Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Logo.BorderSizePixel = 0
            Logo.Size = UDim2.new(1, 0, 1, 0)
            Logo.Image = cfinfo.Logo
            
            UICorner_11.CornerRadius = UDim.new(1, 0)
            UICorner_11.Parent = Logo
            
            DevName.Name = "DevName"
            DevName.Parent = Info
            DevName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DevName.BackgroundTransparency = 1.000
            DevName.BorderColor3 = Color3.fromRGB(0, 0, 0)
            DevName.BorderSizePixel = 0
            DevName.Position = UDim2.new(0, 60, 0, 0)
            DevName.Size = UDim2.new(1, -60, 0, 20)
            DevName.Font = Enum.Font.GothamBold
            DevName.Text = cfinfo.Name
            DevName.TextColor3 = Color3.fromRGB(255, 255, 255)
            DevName.TextSize = 11.000
            DevName.TextXAlignment = Enum.TextXAlignment.Left
            
            Desc.Name = "Desc"
            Desc.Parent = Info
            Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Desc.BackgroundTransparency = 1.000
            Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Desc.BorderSizePixel = 0
            Desc.Position = UDim2.new(0, 60, 0, 20)
            Desc.Size = UDim2.new(1, -60, 1, -20)
            Desc.Font = Enum.Font.GothamBold
            Desc.Text = cfinfo.Description
            Desc.TextColor3 = Color3.fromRGB(100, 100, 100)
            Desc.TextSize = 11.000
            Desc.TextWrapped = true
            Desc.TextXAlignment = Enum.TextXAlignment.Left
            Desc.TextYAlignment = Enum.TextYAlignment.Top
        end
        function Fe:AddButton(cfb)
            cfb = cfb or {}
            cfb.Title = cfb.Title or "Button"
            cfb.Callback = cfb.Callback or function() end

            local Button = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local UIStroke_2 = Instance.new("UIStroke")
            local Title_2 = Instance.new("TextLabel")
            local UIPadding_3 = Instance.new("UIPadding")
            local Click4 = Instance.new("TextButton")
            local ImageLabel = Instance.new("ImageLabel")

            Button.Name = "Button"
            Button.Parent = ChannelReal
            Button.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
            Button.BackgroundTransparency = 0.120
            Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Button.BorderSizePixel = 0
            Button.Size = UDim2.new(1, 0, 0, 30)
            MouseTo(Button)
            
            UICorner_3.CornerRadius = UDim.new(0, 5)
            UICorner_3.Parent = Button
            
            UIStroke_2.Parent = Button
            UIStroke_2.Color = Color3.fromRGB(40, 40, 40)
            UIStroke_2.Transparency = 0.350
            
            Title_2.Name = "Title"
            Title_2.Parent = Button
            Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_2.BackgroundTransparency = 1.000
            Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title_2.BorderSizePixel = 0
            Title_2.Size = UDim2.new(1, -80, 1, 0)
            Title_2.Font = Enum.Font.GothamBold
            Title_2.Text = cfb.Title
            Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title_2.TextSize = 11.000
            Title_2.TextXAlignment = Enum.TextXAlignment.Left
            
            UIPadding_3.Parent = Title_2
            UIPadding_3.PaddingLeft = UDim.new(0, 7)
            
            Click4.Name = "Click4"
            Click4.Parent = Button
            Click4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Click4.BackgroundTransparency = 1.000
            Click4.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Click4.BorderSizePixel = 0
            Click4.Size = UDim2.new(1, 0, 1, 0)
            Click4.Font = Enum.Font.SourceSans
            Click4.Text = ""
            Click4.TextColor3 = Color3.fromRGB(0, 0, 0)
            Click4.TextSize = 14.000
            
            ImageLabel.Parent = Button
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(1, -25, 0, 9)
            ImageLabel.Rotation = -90.000
            ImageLabel.Size = UDim2.new(0, 12, 0, 12)
            ImageLabel.Image = "rbxassetid://122058573955698"

            Click4.Activated:Connect(function()
                Button.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                TweenService:Create(Button, 
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), 
                    {BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                }):Play()
                cfb.Callback()
            end)
        end
        function Fe:AddToggle(cft)
            cft = cft or {}
            cft.Title = cft.Title or ""
            cft.Default = cft.Default or false
            cft.Callback = cft.Callback or function() end

            local Toggle = Instance.new("Frame")
            local UICorner_12 = Instance.new("UICorner")
            local UIStroke_8 = Instance.new("UIStroke")
            local Title_4 = Instance.new("TextLabel")
            local UIPadding_7 = Instance.new("UIPadding")
            local CheckToggle = Instance.new("Frame")
            local UICorner_13 = Instance.new("UICorner")
            local UIStroke_9 = Instance.new("UIStroke")
            local Check = Instance.new("Frame")
            local UICorner_14 = Instance.new("UICorner")
            local Click4_2 = Instance.new("TextButton")
            local ToggleFunc = {}

            Toggle.Name = "Toggle"
            Toggle.Parent = ChannelReal
            Toggle.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
            Toggle.BackgroundTransparency = 0.120
            Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Toggle.BorderSizePixel = 0
            Toggle.Size = UDim2.new(1, 0, 0, 30)
            MouseTo(Toggle)
            
            UICorner_12.CornerRadius = UDim.new(0, 5)
            UICorner_12.Parent = Toggle
            
            UIStroke_8.Parent = Toggle
            UIStroke_8.Color = Color3.fromRGB(40, 40, 40)
            UIStroke_8.Transparency = 0.350
            
            Title_4.Name = "Title"
            Title_4.Parent = Toggle
            Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_4.BackgroundTransparency = 1.000
            Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title_4.BorderSizePixel = 0
            Title_4.Size = UDim2.new(1, -80, 1, 0)
            Title_4.Font = Enum.Font.GothamBold
            Title_4.Text = cft.Title
            Title_4.TextColor3 = Color3.fromRGB(144, 144, 144)
            Title_4.TextSize = 11.000
            Title_4.TextXAlignment = Enum.TextXAlignment.Left
            
            UIPadding_7.Parent = Title_4
            UIPadding_7.PaddingLeft = UDim.new(0, 7)
            
            CheckToggle.Name = "CheckToggle"
            CheckToggle.Parent = Toggle
            CheckToggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            CheckToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            CheckToggle.BorderSizePixel = 0
            CheckToggle.Position = UDim2.new(1, -55, 0, 5)
            CheckToggle.Size = UDim2.new(0, 45, 0, 20)
            
            UICorner_13.CornerRadius = UDim.new(1, 0)
            UICorner_13.Parent = CheckToggle
            
            UIStroke_9.Parent = CheckToggle
            UIStroke_9.Color = Color3.fromRGB(40, 40, 40)
            UIStroke_9.Transparency = 0.740
            
            Check.Name = "Check"
            Check.Parent = CheckToggle
            Check.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
            Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Check.BorderSizePixel = 0
            Check.Position = UDim2.new(0, 3, 0, 2)
            Check.Size = UDim2.new(0, 16, 0, 16)
            
            UICorner_14.CornerRadius = UDim.new(1, 0)
            UICorner_14.Parent = Check
            
            Click4_2.Name = "Click4"
            Click4_2.Parent = Toggle
            Click4_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Click4_2.BackgroundTransparency = 1.000
            Click4_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Click4_2.BorderSizePixel = 0
            Click4_2.Size = UDim2.new(1, 0, 1, 0)
            Click4_2.Font = Enum.Font.SourceSans
            Click4_2.Text = ""
            Click4_2.TextColor3 = Color3.fromRGB(0, 0, 0)
            Click4_2.TextSize = 14.000
            local Togglevalue = cft.Default
            function ToggleFunc:Set(boolean)
                if boolean then
                    Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TweenService:Create(CheckToggle, 
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), 
                    {BackgroundColor3 = Color3.fromRGB(255, 37, 41)
                }):Play()
                TweenService:Create(Check, 
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), 
                    {BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                TweenService:Create(Check, 
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), 
                    {Position = UDim2.new(0, 25, 0, 2)
                }):Play()
                else
                    Title_4.TextColor3 = Color3.fromRGB(144, 144, 144)
                    TweenService:Create(CheckToggle, 
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), 
                    {BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                }):Play()
                TweenService:Create(Check, 
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), 
                    {BackgroundColor3 = Color3.fromRGB(100, 100, 100)
                }):Play()
                TweenService:Create(Check, 
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), 
                    {Position = UDim2.new(0, 3, 0, 2)
                }):Play()
                end
                Togglevalue = boolean
                cft.Callback(Togglevalue)
            end
            Click4_2.Activated:Connect(function()
                ToggleFunc:Set(not Togglevalue)
            end)
            ToggleFunc:Set(Togglevalue)
            return ToggleFunc
        end
        function Fe:AddDropdown(cfd)
            cfd = cfd or {}
            cfd.Title = cfd.Title or ""
            cfd.Values = cfd.Values or {}
            cfd.Default = cfd.Default or ""
            cfd.Callback = cfd.Callback or function() end

            local Dropdown = Instance.new("Frame")
            local UICorner_4 = Instance.new("UICorner")
            local UIStroke_3 = Instance.new("UIStroke")
            local Title_3 = Instance.new("TextLabel")
            local UIPadding_4 = Instance.new("UIPadding")
            local Selected = Instance.new("Frame")
            local UICorner_5 = Instance.new("UICorner")
            local UIStroke_4 = Instance.new("UIStroke")
            local Selecting = Instance.new("TextLabel")
            local UIPadding_5 = Instance.new("UIPadding")
            local Icon = Instance.new("ImageLabel")
            local List = Instance.new("Frame")
            local UIStroke_5 = Instance.new("UIStroke")
            local UICorner_6 = Instance.new("UICorner")
            local CacList = Instance.new("Frame")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local UIPadding_6 = Instance.new("UIPadding")
            local Click7 = Instance.new("TextButton")
            local DropFunc = {Values = cfd.Values, Default = cfd.Default}

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ChannelReal
            Dropdown.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
            Dropdown.BackgroundTransparency = 0.120
            Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Dropdown.BorderSizePixel = 0
            Dropdown.Size = UDim2.new(1, 0, 0, 30)
            MouseTo(Dropdown)
            
            UICorner_4.CornerRadius = UDim.new(0, 5)
            UICorner_4.Parent = Dropdown
            
            UIStroke_3.Parent = Dropdown
            UIStroke_3.Color = Color3.fromRGB(40, 40, 40)
            UIStroke_3.Transparency = 0.350
            
            Title_3.Name = "Title"
            Title_3.Parent = Dropdown
            Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_3.BackgroundTransparency = 1.000
            Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title_3.BorderSizePixel = 0
            Title_3.Size = UDim2.new(1, -80, 1, 0)
            Title_3.Font = Enum.Font.GothamBold
            Title_3.Text = cfd.Title
            Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title_3.TextSize = 11.000
            Title_3.TextXAlignment = Enum.TextXAlignment.Left
            
            UIPadding_4.Parent = Title_3
            UIPadding_4.PaddingLeft = UDim.new(0, 7)
            
            Selected.Name = "Selected"
            Selected.Parent = Dropdown
            Selected.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Selected.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Selected.BorderSizePixel = 0
            Selected.Position = UDim2.new(1, -100, 0, 4)
            Selected.Size = UDim2.new(0, 90, 0, 20)
            
            UICorner_5.CornerRadius = UDim.new(0, 5)
            UICorner_5.Parent = Selected
            
            UIStroke_4.Parent = Selected
            UIStroke_4.Color = Color3.fromRGB(40, 40, 40)
            UIStroke_4.Transparency = 0.350
            
            Selecting.Name = "Selecting"
            Selecting.Parent = Selected
            Selecting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Selecting.BackgroundTransparency = 1.000
            Selecting.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Selecting.BorderSizePixel = 0
            Selecting.Size = UDim2.new(1, 0, 1, 0)
            Selecting.Font = Enum.Font.GothamBold
            Selecting.Text = cfd.Default
            Selecting.TextColor3 = Color3.fromRGB(222, 222, 222)
            Selecting.TextSize = 11.000
            Selecting.TextXAlignment = Enum.TextXAlignment.Left
            
            UIPadding_5.Parent = Selecting
            UIPadding_5.PaddingLeft = UDim.new(0, 9)
            
            Icon.Name = "Icon"
            Icon.Parent = Selected
            Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon.BackgroundTransparency = 1.000
            Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Icon.BorderSizePixel = 0
            Icon.Position = UDim2.new(1, -110, 0, 4)
            Icon.Rotation = 180.000
            Icon.Size = UDim2.new(0, 12, 0, 12)
            Icon.Image = "rbxassetid://122058573955698"
            
            List.Name = "List"
            List.Parent = Selected
            List.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            List.BorderColor3 = Color3.fromRGB(0, 0, 0)
            List.BorderSizePixel = 0
            List.ClipsDescendants = true
            List.Size = UDim2.new(1, 0, 0, 20)
            List.ZIndex = 999
            List.Visible = false
            
            UIStroke_5.Parent = List
            UIStroke_5.Color = Color3.fromRGB(40, 40, 40)
            UIStroke_5.Transparency = 0.350
            
            UICorner_6.CornerRadius = UDim.new(0, 5)
            UICorner_6.Parent = List
            
            CacList.Name = "CacList"
            CacList.Parent = List
            CacList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            CacList.BackgroundTransparency = 1.000
            CacList.BorderColor3 = Color3.fromRGB(0, 0, 0)
            CacList.BorderSizePixel = 0
            CacList.Size = UDim2.new(1, 0, 1, 0)
            CacList.ZIndex = 999
            
            UIListLayout_2.Parent = CacList
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 8)
            
            UIPadding_6.Parent = CacList
            UIPadding_6.PaddingBottom = UDim.new(0, 2)
            UIPadding_6.PaddingLeft = UDim.new(0, 2)
            UIPadding_6.PaddingRight = UDim.new(0, 2)
            UIPadding_6.PaddingTop = UDim.new(0, 2)

            Click7.Name = "Click7"
            Click7.Parent = Dropdown
            Click7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Click7.BackgroundTransparency = 1.000
            Click7.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Click7.BorderSizePixel = 0
            Click7.Size = UDim2.new(1, -110, 1, 0)
            Click7.Font = Enum.Font.SourceSans
            Click7.Text = ""
            Click7.TextColor3 = Color3.fromRGB(0, 0, 0)
            Click7.TextSize = 14.000

            Click7.Activated:Connect(function()
                if List.Size.Y.Offset <= 20 then
                    List.Visible = true
                    TweenService:Create(List, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 45)}):Play()
                else
                    TweenService:Create(List, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(1, 0, 0, 20)}):Play()
                    wait(0.1)
                    List.Visible = false
                end
            end)
			function DropFunc:Add(v)
                local Option1 = Instance.new("Frame")
                local UICorner_7 = Instance.new("UICorner")
                local Sex = Instance.new("TextLabel")
                local Click5 = Instance.new("TextButton")

                Option1.Name = "Option 1"
                Option1.Parent = CacList
                Option1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Option1.BackgroundTransparency = 1.000
                Option1.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Option1.BorderSizePixel = 0
                Option1.Size = UDim2.new(1, 0, 0, 27)
                Option1.ZIndex = 999
                
                UICorner_7.CornerRadius = UDim.new(0, 5)
                UICorner_7.Parent = Option1
                
                Sex.Name = "Sex"
                Sex.Parent = Option1
                Sex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sex.BackgroundTransparency = 1.000
                Sex.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Sex.BorderSizePixel = 0
                Sex.Size = UDim2.new(1, 0, 1, 0)
                Sex.ZIndex = 999
                Sex.Font = Enum.Font.GothamBold
                Sex.Text = tostring(v)
                Sex.TextColor3 = Color3.fromRGB(188, 188, 188)
                Sex.TextSize = 12.000
                
                Click5.Name = "Click5"
                Click5.Parent = Option1
                Click5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Click5.BackgroundTransparency = 1.000
                Click5.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Click5.BorderSizePixel = 0
                Click5.Size = UDim2.new(1, 0, 1, 0)
                Click5.ZIndex = 999
                Click5.Font = Enum.Font.SourceSans
                Click5.Text = ""
                Click5.TextColor3 = Color3.fromRGB(0, 0, 0)
                Click5.TextSize = 14.000
				Click5.Activated:Connect(function()
					for _, v in pairs(CacList.Parent:GetChildren()) do
                        for n, nn in pairs(v:GetChildren()) do
                            if nn:IsA("Frame") then
                                nn.BackgroundTransparency = 1.000
                            end
                        end
                    end
                    for _, v in pairs(CacList.Parent:GetChildren()) do
                        for n, nn in pairs(v:GetChildren()) do
                            if nn:IsA("Frame") then
                                nn.Sex.TextColor3 = Color3.fromRGB(188, 188, 188)
                            end
                        end
                    end
                    Sex.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Option1.BackgroundTransparency =0.930
                    Selecting.Text = tostring(v)
                    cfd.Callback(tostring(v))
                end)
			end
			function DropFunc:Set(cotect)
				for _, v in pairs(CacList.Parent:GetChildren()) do
                    for n, nn in pairs(v:GetChildren()) do
                        if nn:IsA("Frame") then
                            if nn.Sex.Text ~= cotect then
                                nn.Sex.TextColor3 = Color3.fromRGB(155, 155, 155)
                                nn.BackgroundTransparency = 0.980
                            elseif nn.Sex.Text == cotect then
                                nn.Sex.TextColor3 = Color3.fromRGB(255, 255, 255)
                                nn.BackgroundTransparency = 0.930
                                Selecting.Text = cotect
                                cfd.Callback(cotect)
                            end 
                        end
                    end
                end
			end
			function DropFunc:Refresh(Values)
				for _, v in pairs(CacList:GetChildren()) do
					if v:IsA("Frame") then
						v:Destroy()
					end
				end
				for _, v in pairs(Values) do
					DropFunc:Add(v)
				end
			end
            DropFunc:Set(cfd.Default)
			DropFunc:Refresh(DropFunc.Values)
			return DropFunc
        end
        function Fe:AddSlider(cfs)
            cfs = cfs or {}
            cfs.Title = cfs.Title or ""
            cfs.Max = cfs.Max or 100
            cfs.Min = cfs.Min or 1
            cfs.Default = cfs.Default or 50
            cfs.Callback = cfs.Callback or function() end

            local Slider = Instance.new("Frame")
            local UICorner_18 = Instance.new("UICorner")
            local UIStroke_12 = Instance.new("UIStroke")
            local Title_6 = Instance.new("TextLabel")
            local UIPadding_9 = Instance.new("UIPadding")
            local SliderFrame = Instance.new("Frame")
            local UICorner_19 = Instance.new("UICorner")
            local SliderDraggable = Instance.new("Frame")
            local UICorner_20 = Instance.new("UICorner")
            local Chich = Instance.new("Frame")
            local UICorner_21 = Instance.new("UICorner")
            local SliderFunc = {Value = cfs.Default}

            Slider.Name = "Slider"
            Slider.Parent = ChannelReal
            Slider.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
            Slider.BackgroundTransparency = 0.120
            Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Slider.BorderSizePixel = 0
            Slider.Size = UDim2.new(1, 0, 0, 30)
            
            UICorner_18.CornerRadius = UDim.new(0, 5)
            UICorner_18.Parent = Slider
            
            UIStroke_12.Parent = Slider
            UIStroke_12.Color = Color3.fromRGB(40, 40, 40)
            UIStroke_12.Transparency = 0.350
            
            Title_6.Name = "Title"
            Title_6.Parent = Slider
            Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_6.BackgroundTransparency = 1.000
            Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title_6.BorderSizePixel = 0
            Title_6.Size = UDim2.new(1, -80, 1, 0)
            Title_6.Font = Enum.Font.GothamBold
            Title_6.Text = cfs.Title .. " / " .. cfs.Default
            Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title_6.TextSize = 11.000
            Title_6.TextXAlignment = Enum.TextXAlignment.Left
            
            UIPadding_9.Parent = Title_6
            UIPadding_9.PaddingLeft = UDim.new(0, 7)
            
            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = Slider
            SliderFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
            SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Position = UDim2.new(1, -145, 0, 10)
            SliderFrame.Size = UDim2.new(0, 135, 0, 8)
            
            UICorner_19.CornerRadius = UDim.new(0, 3)
            UICorner_19.Parent = SliderFrame
            
            SliderDraggable.Name = "SliderDraggable"
            SliderDraggable.Parent = SliderFrame
            SliderDraggable.BackgroundColor3 = Color3.fromRGB(255, 37, 41)
            SliderDraggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderDraggable.BorderSizePixel = 0
            SliderDraggable.Size = UDim2.new(0, 100, 1, 0)
            
            UICorner_20.CornerRadius = UDim.new(0, 3)
            UICorner_20.Parent = SliderDraggable
            
            Chich.Name = "Chich"
            Chich.Parent = SliderDraggable
            Chich.AnchorPoint = Vector2.new(0.5, 0.5)
            Chich.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Chich.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Chich.BorderSizePixel = 0
            Chich.Position = UDim2.new(1, -3, 0, 3)
            Chich.Size = UDim2.new(0, 9, 0, 16)
            
            UICorner_21.CornerRadius = UDim.new(0, 3)
            UICorner_21.Parent = Chich
            local dragging = false
			local function Round(Number, Factor)
				local Result = math.floor(Number/Factor + (math.sign(Number) * 0.5)) * Factor
				if Result < 0 then Result = Result + Factor end
				return Result
			end
			function SliderFunc:Set(Value)
				Value = math.clamp(Round(Value, 1), cfs.Min, cfs.Max)
				SliderFunc.Value = Value
				Title_6.Text = cfs.Title .. " / " .. tostring(Value)
				cfs.Callback(SliderFunc.Value)
				TweenService:Create(
					SliderDraggable,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.fromScale((Value - cfs.Min) / (cfs.Max - cfs.Min), 1)}
				):Play()
			end
			SliderFrame.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = true
				end
			end)
			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)            
			UserInputService.InputChanged:Connect(function(input)
				if dragging then
					local SizeScale = math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1)
					SliderFunc:Set(cfs.Min + ((cfs.Max - cfs.Min) * SizeScale)) 
				end
			end)        
			Title_6:GetPropertyChangedSignal("Text"):Connect(function()
				local Valid = Title_6.Text:gsub("[^%d]", "")
				if Valid ~= "" then
					local ValidNumber = math.min(tonumber(Valid), cfs.Max)
					Title_6.Text = cfs.Title .. " / " .. tostring(ValidNumber)
				else
					Title_6.Text = cfs.Title .. " / " .. tostring(Valid)
				end
			end)
            SliderFunc:Set(cfs.Default)
            return SliderFunc
        end
        function Fe:AddParagraph(cfp)
            cfp = cfp or {}
            cfp.Title = cfp.Title or ""

            local Pargagraph = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local UIStroke = Instance.new("UIStroke")
            local Title = Instance.new("TextLabel")
            local UIPadding_2 = Instance.new("UIPadding")
            local ParaFunc = {}

            Pargagraph.Name = "Pargagraph"
            Pargagraph.Parent = ChannelReal
            Pargagraph.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
            Pargagraph.BackgroundTransparency = 0.120
            Pargagraph.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Pargagraph.BorderSizePixel = 0
            Pargagraph.Size = UDim2.new(1, 0, 0, 30)
            
            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = Pargagraph
            
            UIStroke.Parent = Pargagraph
            UIStroke.Color = Color3.fromRGB(40, 40, 40)
            UIStroke.Transparency = 0.350
            
            Title.Name = "Title"
            Title.Parent = Pargagraph
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title.BorderSizePixel = 0
            Title.Size = UDim2.new(1, -80, 1, 0)
            Title.Font = Enum.Font.GothamBold
            Title.Text = cfp.Title
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title.TextSize = 13.000
            Title.TextXAlignment = Enum.TextXAlignment.Left
            
            UIPadding_2.Parent = Title
            UIPadding_2.PaddingLeft = UDim.new(0, 7)
            function ParaFunc:Set(cc)
                Title.Text = cc
            end
            return ParaFunc
        end
        function Fe:AddInput(cfi)
            cfi = cfi or {}
            cfi.Title = cfi.Title or "Input"
            cfi.PlaceHolderText = cfi.PlaceHolderText or "Input here"
            cfi.Default = cfi.Default or ""
            cfi.Callback = cfi.Callback or function() end

            local Input = Instance.new("Frame")
            local UICorner_22 = Instance.new("UICorner")
            local UIStroke_13 = Instance.new("UIStroke")
            local Title_7 = Instance.new("TextLabel")
            local UIPadding_11 = Instance.new("UIPadding")
            local InputFrame = Instance.new("Frame")
            local UICorner_23 = Instance.new("UICorner")
            local UIStroke_14 = Instance.new("UIStroke")
            local RealInput = Instance.new("TextBox")

            Input.Name = "Input"
            Input.Parent = ChannelReal
            Input.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            Input.BackgroundTransparency = 0.120
            Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Input.BorderSizePixel = 0
            Input.Size = UDim2.new(1, 0, 0, 30)
            
            UICorner_22.CornerRadius = UDim.new(0, 5)
            UICorner_22.Parent = Input
            
            UIStroke_13.Parent = Input
            UIStroke_13.Color = Color3.fromRGB(40, 40, 40)
            UIStroke_13.Transparency = 0.350
            
            Title_7.Name = "Title"
            Title_7.Parent = Input
            Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_7.BackgroundTransparency = 1.000
            Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title_7.BorderSizePixel = 0
            Title_7.Size = UDim2.new(1, -130, 1, 0)
            Title_7.Font = Enum.Font.GothamBold
            Title_7.Text = cfi.Title
            Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title_7.TextSize = 11.000
            Title_7.TextXAlignment = Enum.TextXAlignment.Left
            
            UIPadding_11.Parent = Title_7
            UIPadding_11.PaddingLeft = UDim.new(0, 7)
            
            InputFrame.Name = "InputFrame"
            InputFrame.Parent = Input
            InputFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
            InputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            InputFrame.BorderSizePixel = 0
            InputFrame.Position = UDim2.new(1, -120, 0, 5)
            InputFrame.Size = UDim2.new(0, 110, 0, 20)
            
            UICorner_23.CornerRadius = UDim.new(0, 5)
            UICorner_23.Parent = InputFrame
            
            UIStroke_14.Parent = InputFrame
            UIStroke_14.Color = Color3.fromRGB(144, 144, 144)
            UIStroke_14.Transparency = 0.670
            
            RealInput.Name = "RealInput"
            RealInput.Parent = InputFrame
            RealInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            RealInput.BackgroundTransparency = 1.000
            RealInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
            RealInput.BorderSizePixel = 0
            RealInput.ClipsDescendants = true
            RealInput.Size = UDim2.new(1, 0, 1, 0)
            RealInput.ClearTextOnFocus = false
            RealInput.Font = Enum.Font.GothamBold
            RealInput.PlaceholderText = cfi.PlaceHolderText
            RealInput.Text = cfi.Default
            RealInput.TextColor3 = Color3.fromRGB(255, 255, 255)
            RealInput.TextSize = 13.000
            RealInput.FocusLost:Connect(function()
                cfi.Callback(RealInput.Text)
            end)
        end
        return Fe
    end
    return Tab
end
return RedzLib
