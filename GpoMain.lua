local Client = game.Players.LocalPlayer

if getconnections then
    for i,v in pairs(getconnections(Client.Idled)) do
        v:Disable() 
    end
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end

if not Client.Character then
    Client.CharacterAdded:Wait()
end

repeat wait() until Client.Character and Client.Character:FindFirstChild("HumanoidRootPart")

wait(2)

local currentPlaceId = game.PlaceId

if currentPlaceId == 11424731604 then
    print("special place detected loading diff script")
    pcall(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ba4257029b2a29c97f99c9af8e471451.lua"))()
    end)
else
    print("main gpo detected loading main script")
    pcall(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2693ba4d4a0e7bee68d089f2a1ba4f37.lua"))()
    end)
end

print("loaded")
