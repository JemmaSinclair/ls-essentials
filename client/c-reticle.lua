if enablereticle then
isSniper = false
reticle = true

RegisterCommand("reticle", function()
	reticle = not reticle
	if reticle then
	notify("~g~Reticle Enabled.")
	elseif not reticle then
	notify("~r~Reticle Disabled.")
	end
end)

Citizen.CreateThread(function()
	while true do
		ped = GetPlayerPed(-1)
		Citizen.Wait(250)
		isSniper = false
		local currentWeaponHash = GetSelectedPedWeapon(ped)
		if currentWeaponHash == 100416529 then
			isSniper = true
		elseif currentWeaponHash == 205991906 then
			isSniper = true
		elseif currentWeaponHash == -952879014 then
			isSniper = true
		elseif currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
			isSniper = true
		elseif currentWeaponHash == GetHashKey('WEAPON_MARKSMANRIFLE_MK2') then
			isSniper = true
		elseif currentWeaponHash == GetHashKey('WEAPON_APPISTOL') then
			isSniper = true
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if not isSniper and not reticle then
			HideHudComponentThisFrame(14)
		end
	end
end)


function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end
end