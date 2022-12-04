if enableweather then
local CurrentWeather = 'EXTRASUNNY'
local BlackoutEnabled = false
local ManualSnowEnabled = false
local DynamicWeatherEnabled = true
local wtype = ""
local name = ""
local serverID = ""
local newHours = ""
local newMinutes = ""
local freezeTimeNew = ""
RegisterCommand("weathers", function(source)
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weathers", "BLIZZARD, CLEAR, CLEARING, CLOUDS, EXTRASUNNY, FOGGY, HALLOWEEN, NEUTRAL, OVERCAST, RAIN, SMOG, SNOW, SNOWLIGHT, THUNDER, XMAS"}})
end, false)

RegisterCommand("weather", function(source, args)
if args[1] then
wtype = string.upper(args[1])
end
name = tostring(GetPlayerName(GetPlayerIndex(-1)))
serverID = tostring(GetPlayerServerId(GetPlayerIndex(-1)))
if wtype == "EXTRASUNNY" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "CLEAR" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "SMOG" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "NEUTRAL" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "FOGGY" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "CLOUDS" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "OVERCAST" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "CLEARING" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "RAIN" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "THUNDER" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "BLIZZARD" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "SNOW" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "SNOWLIGHT" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "XMAS" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
elseif wtype == "HALLOWEEN" then
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Weather set to "..wtype.."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' used /weather '.. wtype..".")
else
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "EXTRASUNNY, CLEAR, SMOG, NEUTRAL, FOGGY, CLOUDS, OVERCAST, CLEARING, RAIN, THUNDER, BLIZZARD, SNOW, SNOWLIGHT, XMAS, HALLOWEEN."}})

end
end, true)
RegisterCommand("dynamicweather", function(source, args)
name = tostring(GetPlayerName(GetPlayerIndex(-1)))
serverID = tostring(GetPlayerServerId(GetPlayerIndex(-1)))
DynamicWeatherEnabled = not DynamicWeatherEnabled
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Dynamic Weather has been set to "..tostring(DynamicWeatherEnabled).."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' set Dynamic Weather to '.. tostring(DynamicWeatherEnabled)..".")
end, true)

--[[RegisterCommand("groundsnow", function(source, args)
name = tostring(GetPlayerName(GetPlayerIndex(-1)))
serverID = tostring(GetPlayerServerId(GetPlayerIndex(-1)))
ManualSnowEnabled = not ManualSnowEnabled
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Ground Snow has been set to "..tostring(ManualSnowEnabled).."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' set Ground Snow to '.. tostring(ManualSnowEnabled)..".")
end, false)

RegisterCommand("blackout", function(source, args)
name = tostring(GetPlayerName(GetPlayerIndex(-1)))
serverID = tostring(GetPlayerServerId(GetPlayerIndex(-1)))
BlackoutEnabled = not BlackoutEnabled
TriggerServerEvent("vMenu:UpdateServerWeather", wtype, BlackoutEnabled, DynamicWeatherEnabled, ManualSnowEnabled);
TriggerEvent('chat:addMessage', {color = { 255, 0, 0},multiline = true,args = {"Weather", "Blackout has been set to "..tostring(BlackoutEnabled).."."}})
TriggerServerEvent("discord", 'SYSTEM', '**'..name..'** ('..'**'..serverID..'**'..')' .. ' set Blackout to '.. tostring(BlackoutEnabled)..".")
end, false)]]

--[[
RegisterCommand("time", function(source, args)
	if tonumber(args[1]) and not args[2] then
		newHours = tonumber(args[1])
		newMinutes = 0
		TriggerServerEvent("vMenu:UpdateServerTime", newHours, newMinutes, freezeTimeNew)
		print(newHours)
	elseif tonumber(args[1]) and tonumber(args[2]) then
		newHours = tonumber(args[1])
		newMinutes = tonumber(args[2])
		if args[3] then
			freezeTimeNew = tostring(args[3])
		else
			freezeTimeNew = false
		end
		TriggerServerEvent("vMenu:UpdateServerTime", newHours, newMinutes, freezeTimeNew)
		print(newHours..":"..newMinutes)
	end
end, false)
]]
TriggerEvent('chat:addSuggestion', '/weather', 'Change the weather (ADMIN ONLY)', {
    { name="Weather type", help="Leave blank to get a list of acceptable weathers." }
})
TriggerEvent('chat:addSuggestion', '/dynamicweather', 'Toggle Dynamic Weather (ADMIN ONLY)')
end