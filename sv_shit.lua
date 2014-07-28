util.AddNetworkString("joinnewip")
 
hook.Add("PlayerInitialSpawn", "hey", function(ply)
net.Start("joinnewip")
net.Send(ply)
end)
