
local playerName = game:GetService("Players").LocalPlayer.Name
local maskedName = string.sub(playerName, 1, 1) .. string.rep("*", #playerName - 2) .. string.sub(playerName, #playerName, #playerName)
local playerCount = #game.Players:GetPlayers()
local maxPlayers = game.Players.MaxPlayers

Itemshoptable = {}

for i, v in pairs(workspace.active:GetChildren()) do
    if v.Name == "Merchant Boat" then
        for _, item in pairs(v:GetChildren()) do
            if item:FindFirstChild("purchaserompt") and item.Name:find("Rod") then
                table.insert(Itemshoptable, item.Name)
            end
        end
    end
end


ScriptJob = 'game.ReplicatedStorage.__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")'
ScriptServerJobId = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, '..game.JobId..', game.Players.LocalPlayer)'
for _, itemName in pairs(Itemshoptable) do
    itemmm = itemName
end
spawn(function()
    pcall(function()
        if workspace.active:FindFirstChild("Merchant Boat") then
            local webhook1 = request({
                Url = "https://discord.com/api/webhooks/1297649137503699035/xJX43_TJYyihnwR_XlvMRBjmsauWLg_S_bmMDwe_4EK91wqDVvHu8U71ptxDkcipTZyE",
                Method = "POST",
                Headers = {
                    ["content-type"] = "application/json"
                },
                Body = game:GetService("HttpService"):JSONEncode({
                    ["content"] = "",
                    ["embeds"] = {
                        {
                            ["title"] = "**BONK HUB**",
                            ["description"] = "**Fisch Merchant Boat Notify !**",
                            ["color"] = tonumber(0x00FF00),
                            ["fields"] = {
                                {
                                    ["name"] = "👥 **Players** 👥",
                                    ["value"] = playerCount.." / "..maxPlayers,
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "🗺️ **Item** 🗺️",
                                    ["value"] = itemmm,
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "**Server JobId**",
                                    ["value"] = game.JobId,
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "**Server JobId Script**",
                                    ["value"] = ScriptServerJobId,
                                    ["inline"] = false
                                }
                            },
                            ["image"] = {
                                ["url"] = "https://cdn.discordapp.com/attachments/1012194764063514699/1296448526917701642/how-to-enchant-get-enchant-relic-fisch-roblox.jpg?ex=67125347&is=671101c7&hm=e7c4a8029bcebd9fef7fdb77b548aeed09e60d32648f42ab69c329e4fe0bf53d&"
                            },
                            ["thumbnail"] = {
                                ["url"] = "https://cdn.discordapp.com/attachments/1012194764063514699/1239910670464716820/Logo-B1.webp?ex=6661a54c&is=666053cc&hm=d7e309b3628e3ded2da9128a34a33453ef6f4e418b32044d23973c8b139c94a5&"
                            },
                            ["footer"] = {
                                ["text"] = "BONK HUB | " .. os.date("%H:%M:%S"),
                                ["icon_url"] = "https://cdn.discordapp.com/attachments/1012194764063514699/1239910670464716820/Logo-B1.webp?ex=6661a54c&is=666053cc&hm=d7e309b3628e3ded2da9128a34a33453ef6f4e418b32044d23973c8b139c94a5&"
                            }
                        }
                    }
                })
            })
            print(webhook1.StatusCode)
        end
    end)
end)
spawn(function()
    pcall(function()
        workspace.active.ChildAdded:Connect(function(child)
            if child.Name == "Merchant Boat" then
                local webhook1 = request({
                    Url = "https://discord.com/api/webhooks/1296444086957641778/HVjQ-XYo1XRFGKiX2-hF5j_hn3i0t1w7ZwMseB6d6fBAPINoWOxL_HF0n3EWmN-B03bU",
                    Method = "POST",
                    Headers = {
                        ["content-type"] = "application/json"
                    },
                    Body = game:GetService("HttpService"):JSONEncode({
                        ["content"] = "",
                        ["embeds"] = {
                            {
                                ["title"] = "**BONK HUB**",
                                ["description"] = "**Fisch Merchant Boat Notify !**",
                                ["color"] = tonumber(0x00FF00),
                                ["fields"] = {
                                    {
                                        ["name"] = "👥 **Players** 👥",
                                        ["value"] = playerCount.." / "..maxPlayers,
                                        ["inline"] = false
                                    },
                                    {
                                        ["name"] = "🗺️ **Item** 🗺️",
                                        ["value"] = itemmm,
                                        ["inline"] = false
                                    },
                                    {
                                        ["name"] = "**Server JobId**",
                                        ["value"] = game.JobId,
                                        ["inline"] = false
                                    },
                                    {
                                        ["name"] = "**Server JobId Script**",
                                        ["value"] = ScriptServerJobId,
                                        ["inline"] = false
                                    }
                                },
                                ["image"] = {
                                    ["url"] = "https://cdn.discordapp.com/attachments/1012194764063514699/1296448526917701642/how-to-enchant-get-enchant-relic-fisch-roblox.jpg?ex=67125347&is=671101c7&hm=e7c4a8029bcebd9fef7fdb77b548aeed09e60d32648f42ab69c329e4fe0bf53d&"
                                },
                                ["thumbnail"] = {
                                    ["url"] = "https://cdn.discordapp.com/attachments/1012194764063514699/1239910670464716820/Logo-B1.webp?ex=6661a54c&is=666053cc&hm=d7e309b3628e3ded2da9128a34a33453ef6f4e418b32044d23973c8b139c94a5&"
                                },
                                ["footer"] = {
                                    ["text"] = "BONK HUB | " .. os.date("%H:%M:%S"),
                                    ["icon_url"] = "https://cdn.discordapp.com/attachments/1012194764063514699/1239910670464716820/Logo-B1.webp?ex=6661a54c&is=666053cc&hm=d7e309b3628e3ded2da9128a34a33453ef6f4e418b32044d23973c8b139c94a5&"
                                }
                            }
                        }
                    })
                })
                print(webhook1.StatusCode)
            end
        end)
    end)
end)
