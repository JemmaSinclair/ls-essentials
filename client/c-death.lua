if enabledeathlog then
CreateThread(function()
	local DeathReason, Killer, DeathCauseHash, Weapon
	while true do
		Wait(250)
		if IsEntityDead(PlayerPedId()) then
			local PedKiller = GetPedSourceOfDeath(PlayerPedId())
			local killername = GetPlayerName(PedKiller)
			DeathCauseHash = GetPedCauseOfDeath(PlayerPedId())
			Weapon = ClientWeapons.WeaponNames[tostring(DeathCauseHash)]
			if IsEntityAPed(PedKiller) and IsPedAPlayer(PedKiller) then
				Killer = NetworkGetPlayerIndexFromPed(PedKiller)
			elseif IsEntityAVehicle(PedKiller) and IsEntityAPed(GetPedInVehicleSeat(PedKiller, -1)) and IsPedAPlayer(GetPedInVehicleSeat(PedKiller, -1)) then
				Killer = NetworkGetPlayerIndexFromPed(GetPedInVehicleSeat(PedKiller, -1))
			end
			if (Killer == PlayerId()) then
				DeathReason = lang['DeathReasons'].Suicide
			elseif (Killer == nil) then
				DeathReason = lang['DeathReasons'].Died
			else
				if ClientFunc.IsMelee(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Murdered
				elseif ClientFunc.IsTorch(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Torched
				elseif ClientFunc.IsKnife(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Knifed
				elseif ClientFunc.IsPistol(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Pistoled
				elseif ClientFunc.IsSub(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Riddled
				elseif ClientFunc.IsRifle(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Rifled
				elseif ClientFunc.IsLight(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].MachineGunned
				elseif ClientFunc.IsShotgun(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Pulverized
				elseif ClientFunc.IsSniper(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Sniped
				elseif ClientFunc.IsHeavy(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Obliterated
				elseif ClientFunc.IsMinigun(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Shredded
				elseif ClientFunc.IsBomb(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Bombed
				elseif ClientFunc.IsVeh(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].MowedOver
				elseif ClientFunc.IsVK(DeathCauseHash) then
					DeathReason = lang['DeathReasons'].Flattened
				else
					DeathReason = 'killed'
				end
			end

			if DeathReason == lang['DeathReasons'].Suicide or DeathReason == lang['DeathReasons'].Died then
				TriggerServerEvent('Prefech:playerDied', { type = 1, player_id = GetPlayerServerId(PlayerId()), death_reason = DeathReason, weapon = Weapon })
			else
				TriggerServerEvent('Prefech:playerDied', { type = 2, player_id = GetPlayerServerId(PlayerId()), player_2_id = GetPlayerServerId(Killer), death_reason = DeathReason, weapon = Weapon })
			end
			Killer = nil
			DeathReason = nil
			DeathCauseHash = nil
			Weapon = nil
		end
		while IsEntityDead(PlayerPedId()) do
			Wait(1000)
		end
	end
end)
end