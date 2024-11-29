local function createGUI(CONFIG)
    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local UICorner_Main = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local PictureFrame = Instance.new("ImageLabel")
    local UICorner_Picture = Instance.new("UICorner")
    local MyMapLabel = Instance.new("TextLabel")
    local TimeLabel = Instance.new("TextLabel")
    local KeyInput = Instance.new("TextBox")
    local UICorner_KeyInput = Instance.new("UICorner")
    local SubmitButton = Instance.new("TextButton")
    local UICorner_Submit = Instance.new("UICorner")
    local GetKeyButton = Instance.new("TextButton")
    local UICorner_GetKey = Instance.new("UICorner")
    local BackgroundBlur = Instance.new("BlurEffect")
    
    -- Color scheme
    local DePRIMARY_COLOR = Color3.fromRGB(45, 45, 85)
    local DeSECONDARY_COLOR = Color3.fromRGB(30, 30, 50)
    local DeACCENT_COLOR = Color3.fromRGB(26, 235, 97)
    local DeWHITE = Color3.fromRGB(255, 255, 255)
    local DeBLACK = Color3.fromRGB(0, 0, 0)
    
    -- Add blur effect
    BackgroundBlur.Parent = game.Lighting
    BackgroundBlur.Size = 15
    BackgroundBlur.Enabled = true
    
    
    -- GUI setup
    ScreenGui.Parent = game.CoreGui
    ScreenGui.Name = "KeySystem"
    
    -- Main Frame
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = CONFIG.Colors.PRIMARY_COLOR or DePRIMARY_COLOR
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.5, -200, 1, 100) -- Start offscreen
    MainFrame.Size = UDim2.new(0, 450, 0, 250)
    
    UICorner_Main.CornerRadius = UDim.new(0, 15)
    UICorner_Main.Parent = MainFrame
    
    -- Gradient Effect
    local MainGradient = Instance.new("UIGradient")
    MainGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 100)),
        ColorSequenceKeypoint.new(1, CONFIG.Colors.PRIMARY_COLOR or DePRIMARY_COLOR)
    }
    MainGradient.Rotation = 90
    MainGradient.Parent = MainFrame
    
    -- Title
    Title.Name = "Title"
    Title.Parent = MainFrame
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 0, 0, 10)
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.Font = Enum.Font.GothamBold
    Title.Text = CONFIG.Colors.Header or "BONK HUB | Key System"
    Title.TextColor3 = CONFIG.Colors.ACCENT_COLOR or DeACCENT_COLOR
    Title.TextSize = 24
    Title.TextStrokeTransparency = 0.8
    
    -- Picture Frame
    PictureFrame.Name = "PictureFrame"
    PictureFrame.Parent = MainFrame
    PictureFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    PictureFrame.Position = UDim2.new(0.05, 0, 0.2, 0) -- เปลี่ยนตำแหน่ง
    PictureFrame.Size = UDim2.new(0, 90, 0, 90)
    PictureFrame.ImageTransparency = 0.1
    
    UICorner_Picture.CornerRadius = UDim.new(0, 10)
    UICorner_Picture.Parent = PictureFrame
    
    -- Set Map Image
    local function setMapImage()
        local PlaceId = game.PlaceId
        local Thumbnail = "https://www.roblox.com/asset-thumbnail/image?assetId=" .. PlaceId .. "&width=420&height=420&format=png"
        PictureFrame.Image = Thumbnail
    end
    setMapImage()
    
    -- My Map Label
    MyMapLabel.Name = "MyMapLabel"
    MyMapLabel.Parent = MainFrame
    MyMapLabel.BackgroundTransparency = 1
    MyMapLabel.Position = UDim2.new(0.3, 0, 0.2, 0)  -- เลื่อนตำแหน่งให้ชิดข้างรูป
    MyMapLabel.Size = UDim2.new(0, 200, 0, 20)
    MyMapLabel.Font = Enum.Font.Gotham
    MyMapLabel.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    MyMapLabel.TextColor3 = CONFIG.Colors.WHITE or DeWHITE
    MyMapLabel.TextSize = 16
    
    -- Time Label
    TimeLabel.Name = "TimeLabel"
    TimeLabel.Parent = MainFrame
    TimeLabel.BackgroundTransparency = 1
    TimeLabel.Position = UDim2.new(0.3, 0, 0.35, 0)  -- เลื่อนตำแหน่งให้ชิดข้างรูป
    TimeLabel.Size = UDim2.new(0.35, 0, 0, 20)
    TimeLabel.Font = Enum.Font.Gotham
    TimeLabel.Text = "Time: ..."
    TimeLabel.TextColor3 = CONFIG.Colors.WHITE or DeWHITE
    TimeLabel.TextSize = 16
    
    -- Update Time
    local function updateTime()
        while true do
            local time = os.date("*t")
            TimeLabel.Text = string.format("Time: %02d:%02d:%02d", time.hour, time.min, time.sec)
            wait(1)
        end
    end
    
    KeyInput.Name = "KeyInput"
    KeyInput.Parent = MainFrame
    KeyInput.BackgroundColor3 = CONFIG.Colors.SECONDARY_COLOR or DeSECONDARY_COLOR
    KeyInput.Position = UDim2.new(0.35, 0, 0.5, 0)
    KeyInput.Size = UDim2.new(0.6, 0, 0, 30)
    KeyInput.Font = Enum.Font.Gotham
    KeyInput.PlaceholderText = "Enter your key"
    KeyInput.Text = ""
    KeyInput.TextColor3 = CONFIG.Colors.WHITE or DeWHITE
    KeyInput.TextSize = 16
    KeyInput.TextWrapped = true
    
    UICorner_KeyInput.CornerRadius = UDim.new(0, 8)
    UICorner_KeyInput.Parent = KeyInput
    
    
    SubmitButton.Name = "SubmitButton"
    SubmitButton.Parent = MainFrame
    SubmitButton.BackgroundColor3 = CONFIG.Colors.ACCENT_COLOR or DeACCENT_COLOR
    SubmitButton.Position = UDim2.new(0.35, 0, 0.75, 0)
    SubmitButton.Size = UDim2.new(0.25, 0, 0, 35)
    SubmitButton.Font = Enum.Font.GothamBold
    SubmitButton.Text = "Submit"
    SubmitButton.TextColor3 = CONFIG.Colors.WHITE or DeWHITE
    SubmitButton.TextSize = 16
    
    UICorner_Submit.CornerRadius = UDim.new(0, 10)
    UICorner_Submit.Parent = SubmitButton
    
    GetKeyButton.Name = "GetKeyButton"
    GetKeyButton.Parent = MainFrame
    GetKeyButton.BackgroundColor3 = CONFIG.Colors.ACCENT_COLOR or DeACCENT_COLOR
    GetKeyButton.Position = UDim2.new(0.65, 0, 0.75, 0)
    GetKeyButton.Size = UDim2.new(0.25, 0, 0, 35)
    GetKeyButton.Font = Enum.Font.GothamBold
    GetKeyButton.Text = "Get Key"
    GetKeyButton.TextColor3 = CONFIG.Colors.WHITE or DeWHITE
    GetKeyButton.TextSize = 16
    
    UICorner_GetKey.CornerRadius = UDim.new(0, 10)
    UICorner_GetKey.Parent = GetKeyButton
    
    local function addHoverEffect(button)
        button.MouseEnter:Connect(function()
            button.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
        end)
        button.MouseLeave:Connect(function()
            button.BackgroundColor3 = CONFIG.Colors.ACCENT_COLOR ir DeACCENT_COLOR
        end)
    end
    addHoverEffect(SubmitButton)
    addHoverEffect(GetKeyButton)
    
    MainFrame:TweenPosition(UDim2.new(0.5, -225, 0.5, -125), "Out", "Quad", 0.5, true)
    spawn(updateTime)

    return {
        ScreenGui = ScreenGui,
        MainFrame = MainFrame,
        SubmitButton = SubmitButton,
        GetKeyButton = GetKeyButton,
    }
end

return createGUI
