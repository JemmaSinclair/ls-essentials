local url = WebhookURL

function sendDiscord(name, message)
	TriggerEvent("discord", name, message)
end

if enablediscordlogs then
RegisterNetEvent("discord")
AddEventHandler("discord", function(name, message)
	if message == nil or message == '' then
		print('failure')
	else
		PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({username = name, content = message}), { ['Content-Type'] = 'application/json' })
	end
end)
else
RegisterNetEvent("discord")
AddEventHandler("discord", function(name, message)
	print('Discord module disabled.')
end)
end


TriggerEvent("discord", 'SYSTEM', 'Webhook started.')



local function OnPlayerConnecting(name, setKickReason, deferrals)
    local player = source
    local steamIdentifier
    local identifiers = GetPlayerIdentifiers(player)
    deferrals.defer()

    -- mandatory wait!
    Wait(0)

    deferrals.update(string.format("Hello %s. Your Steam ID is being checked.", name))

    for _, v in pairs(identifiers) do
        if string.find(v, "steam") then
            steamIdentifier = v
            break
        end
    end
	
    -- mandatory wait!
    Wait(0)

    if not steamIdentifier then
        deferrals.done("You are not connected to Steam.")
		TriggerEvent("discord", 'Connection Manager', '```fix'..'\n'..name.. ' rejected.\n```')
    else
        deferrals.done()
		TriggerEvent("discord", 'Connection Manager', "```diff\n".."! "..name.." ("..steamIdentifier..') connecting.'..'\n```' )
    end
end

AddEventHandler("playerConnecting", OnPlayerConnecting)

AddEventHandler('playerDropped', function (reason)
	TriggerEvent("discord", 'Connection Manager', "```fix".."\n"..GetPlayerName(source).. ' disconnected.' .. ' (' .. reason .. ')\n```')
	print('Player ' .. GetPlayerName(source) .. ' dropped (Reason: ' .. reason .. ')')
end)

RegisterServerEvent('playerDied')
AddEventHandler('playerDied',function(args)
	if args.weapon == nil then _Weapon = "" else _Weapon = ""..args.weapon.."" end
	if args.type == 1 then  -- Suicide/died
		ServerFunc.CreateLog({
			EmbedMessage = '**'..GetPlayerName(source) .. '** `'..args.death_reason..'` '.._Weapon,
			player_id = source,
			channel = 'deaths'
		})
	elseif args.type == 2 then -- Killed by other player
		ServerFunc.CreateLog({
			EmbedMessage = '**' .. GetPlayerName(args.player_2_id) .. '** '..args.death_reason..' **' .. GetPlayerName(source).. '** `('.._Weapon..')`',
			player_id = source,
			player_2_id = args.player_2_id,
			channel = 'deaths'
		})
	else -- When gets killed by something else
		ServerFunc.CreateLog({
			EmbedMessage = '**'..GetPlayerName(source) .. '** `'..args.death_reason..'` '.._Weapon,
			player_id = source,
			channel = 'deaths'
		})
	end
end)

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() == resourceName) then
		TriggerEvent("discord", 'SYSTEM', 'Webhook stopped.')
	end
end)
