repeat
    wait()
until game:IsLoaded()


repeat wait() until game.Players.LocalPlayer

if not game:IsLoaded() then
	local GameLoadGui = Instance.new("Message",workspace);
	GameLoadGui.Text = 'Wait Game Loading';
	game.Loaded:Wait();
	GameLoadGui:Destroy();
	task.wait(10);
end;

repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui

game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)

B_107 = game
B_426 = B_107.PlaceId
B_423 = "place"
B_444 = "Market"..B_423.."Service"
local B_424 = B_107:GetService(B_444):GetProductInfo(B_426);
local B_425 = B_424.Name
B_101 = "Function"
B_103 = "Bindable"..B_101
local B_100 = Instance.new(B_103)
function B_105(b)
    OnInvoke(b)
end
B_431 = ".lua"
B_430 = "AllMap"
B_435 = game:GetService("Workspace")
B_428 = "Toonza555"
function B_102(v)
    SetCore(v)
end
function B_427(B_429)
    loadstring(B_429)()
end


local StarterGui = game:GetService("StarterGui")
local bindable = Instance.new("BindableFunction")

function bindable.OnInvoke(response)
    if response == "Yes" then
        setclipboard("https://discord.com/invite/wXQpQRrvuT")
        wait(.5)
        game.StarterGui:SetCore("SendNotification", {
            Title = "Notify !",
            Text = "Link Coppid ! | Thanks for join",
            Icon = "rbxassetid://11262159835",
            Duration = 5,
        })
    end
end

StarterGui:SetCore("SendNotification", {
	Title = "Join Discord !",
    Text = "Please Join Discord",
    Icon = "rbxassetid://11262159835",
	Duration = 500,
	Callback = bindable,
	Button1 = "Yes",
	Button2 = "No"
})


loadstring(game:HttpGet("https://raw.githubusercontent.com/Toonza555/BONKHUB/main/AllMap/Webhook.lua"))()

print("loading")
if B_426 == 1240123653 or string.find(B_425,"Zombie Attack") then -- Zombie Attack
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/ZombieAttack"..B_431))()
elseif B_426 == 6938803436 or B_426 ~= 6938803436 and string.find(B_425,"Dimension") then -- Anime Dimension    
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/AnimeDimension"..B_431))()
elseif B_426 == 10260193230 or string.find(B_425,"Meme Sea") then --Meme Sea
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/MemeSea"..B_431))()
elseif B_426 == 2788229376 or string.find(B_425,"Da Hood") then --Da Hood
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/Dahood"..B_431))()
elseif B_426 == 662417684 or string.find(B_425,"Lucky Block") then --Lucky Block
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/LuckyBlock"..B_431))()
elseif B_426 == 3351674303 or string.find(B_425,"Driving Empire") then --Driving Empire
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/DrivingEmpire"..B_431))()
elseif B_426 == 537413528 or string.find(B_425,"Build A Boat") then --Build A Boat
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/BuildABoat"..B_431))()
elseif B_426 == 3101667897 or string.find(B_425,"Legend Of Speed") then --Legend of Speed
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/Legend_of_Speed"..B_431))()
elseif B_426 == 10704789056 or string.find(B_425,"Drive World") then --Drive World
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/DriveWorld"..B_431))()
elseif B_426 == 13772394625 or string.find(B_425,"Blade Ball") then --Blade Ball
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/BladeBall"..B_431))()
elseif B_426 == 286090429 or string.find(B_425,"Arsenal") then --Arsenal
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/Arsenal"..B_431))()
elseif B_426 == 17534163435 or string.find(B_425,"Dungeon RNG") then --Dungeon Rng
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/DungeonRng"..B_431))()
elseif B_426 == 16055525893 or string.find(B_425,"RNG Odyssey") then --RNG Odyssey
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/RNGOdyssey"..B_431))()
elseif B_426 == 16732694052 or string.find(B_425,"Fisch") then --Fisch
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/Fisch"..B_431))()
elseif B_426 == 914010731 or string.find(B_425,"Ro-Ghoul") then --Roghoul
    B_427(B_107:HttpGet("https://raw.githubusercontent.com/"..B_428.."/BONKHUB/main/"..B_430.."/Roghoul"..B_431))()
else
    game.StarterGui:SetCore("SendNotification", {
    Title = "Notify !",
    Text = "Map Not Supported !!!",
    Icon = "rbxassetid://11262159835",
    Duration = 5,
    })
end
