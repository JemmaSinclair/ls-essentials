local name = ""
local serverID = ""
if enablevehcontrol then
RegisterCommand("trunk", function(source, args)
name = tostring(GetPlayerName(GetPlayerIndex(-1)))
serverID = tostring(GetPlayerServerId(GetPlayerIndex(-1)))
local playerPed = GetPlayerPed(-1)
if (IsPedSittingInAnyVehicle(playerPed)) then
	local vehicle = GetVehiclePedIsIn(playerPed, false)
	if GetVehicleDoorAngleRatio(vehicle, 5) > 0.0 then
		SetVehicleDoorShut(vehicle, 5, false)
		TriggerServerEvent("discord", 'Door Control', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /trunk on '..GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))..' to shut the trunk.')
	else
		SetVehicleDoorOpen(vehicle, 5, false)
		TriggerServerEvent("discord", 'Door Control', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /trunk on '..GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))..' to open the trunk.')
	end
end
end, false)

RegisterCommand("hood", function(source, args)
name = tostring(GetPlayerName(GetPlayerIndex(-1)))
serverID = tostring(GetPlayerServerId(GetPlayerIndex(-1)))
local playerPed = GetPlayerPed(-1)
if (IsPedSittingInAnyVehicle(playerPed)) then
	local vehicle = GetVehiclePedIsIn(playerPed, false)
	if GetVehicleDoorAngleRatio(vehicle, 4) > 0.0 then
		SetVehicleDoorShut(vehicle, 4, false)
		TriggerServerEvent("discord", 'Door Control', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /hood on '..GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))..' to shut the hood.')
	else
		SetVehicleDoorOpen(vehicle, 4, false)
		TriggerServerEvent("discord", 'Door Control', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /hood on '..GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))..' to open the hood.')
	end
end
end, false)


RegisterCommand("engine", function(source,args)
local running = ""
local playerPed = GetPlayerPed(-1)
if GetIsVehicleEngineRunning(GetVehiclePedIsIn(playerPed, false)) == false then
running = true
else
running = false
end

if (IsPedSittingInAnyVehicle(playerPed)) then
local vehicle = GetVehiclePedIsIn(playerPed, false)
SetVehicleEngineOn(vehicle, running, false, true)
end

end, false)
RegisterCommand("eng", function(source,args)
local running = ""
local playerPed = GetPlayerPed(-1)
if GetIsVehicleEngineRunning(GetVehiclePedIsIn(playerPed, false)) == false then
running = true
else
running = false
end

if (IsPedSittingInAnyVehicle(playerPed)) then
local vehicle = GetVehiclePedIsIn(playerPed, false)
SetVehicleEngineOn(vehicle, running, false, true)
end

end, false)
end