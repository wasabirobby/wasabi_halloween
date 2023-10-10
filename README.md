# wasabi_halloween

This resource was created as a free fun script for your players to feel festive during Halloween.

## Features:

* Trick-or-treat at configured locations
* Configurable option to only allow one person per house(See config)
* 100 Pre-Configured locations(Mirror Park; Could use some more locations)
* Option to only allow trick-or-treat at night
* Option to require basket to be equipped to trick-or-treat
* Animations
* Configurable peds
* Usable jack-o-lantern item to toggle basket prop(Configurable)
* Custom prop(For the basket)
* Optimized 0.00ms idle
* Compatible with ESX/QBCore
* Utilizes ox_lib

## Dependency
+ ox_lib - https://github.com/overextended/ox_lib/releases

## Installation

- Download this script
- Add `jackolantern` to your items or switch the item name in `config.lua`
- Maybe put `jackolantern` in a shop?
- Ensure script after ox_lib and enjoy


## QB-Core
- uncomment the qbcore items config
- Add this to shared/items

	---wasabiiiii
    ["jackolantern"] 			 	 = {["name"] = "jackolantern", 				    ["label"] = "jackolantern", 			 ["weight"] = 100,  	["type"] = "item", 		["image"] = "jackolantern.png", 			["unique"] = false,     ["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Wasibi Brand jackolantern" },


### Extra Information
- Inventory image included in the `InventoryImages` directory
- You must add the item `jackolantern`(or whatever config item is set as) to your items database/table.
- Set `Config.trickOrTreat` to false until you're ready for your players to trick or treat so player's can still collect the jack-o-lantern baskets?

## Preview
https://i.imgur.com/V6wYVgQ.png
https://i.imgur.com/QC0eSZg.png
https://i.imgur.com/IcWGcsq.png
https://i.imgur.com/k54DEu6.png


# Support
<a href='https://discord.gg/79zjvy4JMs'>![Discord Banner 2](https://discordapp.com/api/guilds/1025493337031049358/widget.png?style=banner2)</a>
