if enableteleport then
local playerPed = ""
local target = ""
local targetLoc = ""
local istargetPed = ""

RegisterCommand("tp", function(source, args)
playerPed = GetPlayerIndex(source)
if tonumber(args[2]) == nil then
target = GetPlayerFromServerId(args[1])
targetLoc = NetworkGetPlayerCoords(target)
if targetLoc == vector3(0, 0, 0) then
print('invalid')
else
StartPlayerTeleport(playerPed, targetLoc.x,targetLoc.y, targetLoc.z,0, true, true, true)
print(playerPed..target..targetLoc)
end
elseif tonumber(args[2]) ~= nil then
targetLoc = vector3(tonumber(args[1]), tonumber(args[2]), tonumber(args[3]))
if targetLoc == vector3(0, 0, 0) then
print('invalid')
else
StartPlayerTeleport(playerPed, targetLoc.x,targetLoc.y, targetLoc.z,0, true, false, true)
print('done2')
print(playerPed.. "," ..targetLoc)
end
end
end, false)
end