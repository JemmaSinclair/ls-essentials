# LS Essentials
LS Essentials is a script pack containing many essential commands to assist in managing your server.

## Features
* Loadouts - Many different preconfigured loadouts. Refer to the commands section to see a whole list.
* Vehicle Control - Adds commands to control a vehicles doors and engine.
* Reticle Control - Adds a toggleable reticle (off my default).
* Teleport - Adds a teleportation command, to teleport to players or to given coordinates.
* Weather Control - Adds a weather control command.
* Discord Logging - Adds an easy to integrate discord webhook.
* Vehicle Extras - Adds a module for vehicle presets. **REQUIRES LUA KNOWLEDGE TO CONFIGURE**


## Setup
### Requirements
This script requires vMenu and Onesync.

1. Download the latest version of [ls-essentials](https://github.com/KaraTheNeko/ls-essentials/releases/tag/1.0.0)
2. Unzip the folder and add it to your server resources folder.
3. Add the following lines into your server.cfg.
   ```
   ensure ls-essentials
   ```
4. Add the follwoing to either your server.cfg or permissions.cfg.
   ```
   add_ace group.admin ls-essentials.*
   ```
   
   
## Commands
### Loadouts
* /leo1 - Gives a Nightstick, Flashlight, Combat Pistol with Flashlight, Carbine Rifle, Pump Shotgun, and Stungun.
* /leo2 - Gives a Nightstick, Flashlight, Combat Pistol with Flashlight, Carbine Rifle MK 2 with flashlight, scope, and grip, Pump Shotgun, and Stungun.
* /leo3 - Gives a Nightstick, Flashlight, Pistol with Flashlight, Carbine Rifle, Pump Shotgun, and Stungun.
* /leo4 - Gives a Nightstick, Flashlight, Pistol with Flashlight, Carbine Rifle MK 2 with flashlight, scope, and grip, Pump Shotgun, and Stungun.
* /marshal - Gives a Nightstick, Flashlight, Combat Pistol with Flashlight, Stungun, and flare.
* /fire - Gives a Flashlight, Crowbar, Hatchet, Fire Extinguisher, and Flare.
* /swat - Gives a Nightstick, Flashlight, Pistol Mk2 with flashlight and mounted scope, Carbine Rifle Mk 2 with Grip, Sight, Flashlight, and Heavy Barrel, Pump Shotgun, and Stungun.
* /security - Gives a Nightstick, Flashlight, Pistol Mk2 with Flashlight, Carbine Rifle Mk 2 with Sccope, Flashlight, and Grip, Pump Shotgun, and Stungun.
* /ciu - Gives a Flashlight, and Combat Pistol with flashlight.
* /clearw - Clears all weapons.

### Weather
* /weather - Sets to a given weather. 
* /weathers - Lists available weathers.
* /dynamicweather - Toggles vMenu dynamic weather.

### Extras
* /so - Set a preset of sheriff extras.
* /st - Set a preset of state extras.
* /pd - Set a preset of police extras.
* /fd - Sets a preset of fire extras.

### Reticle
* /reticle - Toggle the reticle on or off.

### Teleport
* /tp {x|serverid} [y] [z] - Teleport to either a given player, or a set of coordinates.




## Discord
Need help configuring?  [Join my discord server.](https://discord.gg/DgSg5B6ARJ)