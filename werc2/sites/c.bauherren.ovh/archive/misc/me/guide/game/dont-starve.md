# Don't Starve Todo

## Table of Contents

### todo todo

todo make guide on backing up worlds ./klei/DoNotStarve
if stuck in cave delet survival one it also deletes your entire explored maps

Dont drop items near the campfire

## Where to buy?

<img src=ds.avif style=width:500px;height:auto;>

I bought the pack from [gog](https://www.gog.com/en/game/dont_starve_alone_pack_plus) for £6.59

This included:

- Don't Starve 
- Reign of giants
- Shipwrecked
- Hamlet

## Difference between 'Don't Stave' and 'Don't Stave Together'?

_Don't Starve_ is single-player, _Don't Starve Together_ is multiplayer.

Unlike DST where you can play as any character of the bat, DS requires you to gain experience or complete in-game events to unlock characters.

There are more differences you can read at [gamerant.com](https://gamerant.com/difference-what-to-get-dont-starve-dont-starve-together/)

## Linux compatibility

This worked perfectly fine in artix linux, running on my ThinkPad x230.

I only needed to install `libcurl-gnutls`

## Guides you should watch

The YouTuber _jakeyosaurus_ produced these guides for 'Don't Starve Together'

[beginners](https://youtu.be/hw0thrwvakq?si=ovy0hotfgkliwncw)

[intermediate](https://youtu.be/183_kxv7oxg?si=abqhrlbss_jlxxgw)

They are wonderful
## My guide

obviously not as in depth as the above 2...

### food

only attack butterflies, once they're busying themselves with flowers, otherwise you'll never catch up to them.

stock up on their wings - they recover 8 hunger

### resources

break down pig homes with a hammer, for boards and pigskin

You are lucky if you find an underground cave with sleeping bed, science machine etc.

## Fun

<img src=fun1.avif>

## Cheats

[enable creative mode](enable_creative)

[unlock Maxwell](unlock_maxwell)


## Enable creative mode

I found out how from a 11 year old reddit [post](//reddit.com/r/dontstarve/comments/1fbaqt/how_to_enable_creative_mode_including_how_to/)

How to enable console commands:

On Windows & Mac go to

`<Documents>\Klei\DoNotStarve\settings.ini`

On Linux go to

`~/.klei/DoNotStarve/settings.ini`

In settings.ini change

`ENABLECONSOLE = false`

to

`ENABLECONSOLE = true`

## Console Commands:

Use the '~' key in game to open the console

Use the Enter/Return key to execute the command

Warning: All commands will wear off upon leaving the game

Creative Mode:

This will give you the ability to craft every recipe wether you have the resources or not.

	GetPlayer().components.builder:GiveAllRecipes()

Invincibility:

	GetPlayer().components.health:SetInvincible(true)

Pause Hunger:

	GetPlayer().components.hunger:Pause(true)

Set Max Sanity:

	GetPlayer().components.sanity:SetMax(insert number)

Set Max Health:

	GetPlayer().components.health:SetMaxHealth(insert number)

Skip days:

	for x = 1, 15 do GetClock():MakeNextDay() end

Replace the 15 with the number corresponding to the number of days you want to skip. Be aware this is very slow because the game saves once everyday

Reveal Full Map: First execute

	minimap = TheSim:FindFirstEntityWithTag("minimap")

Next execute

	minimap.MiniMap:ShowArea(0,0,0, 10000)

Useful functions

Enabling useful functions

	RunScript("consolecommands")

You must execute this command before entering any command starting with

	c_

Also all commands needing this command I tagged with UF

Set Hunger (UF)

	c_sethunger(percent)

For Example: Entering

	c_sethunger(0.50)

will set your hunger to 50 percent

Set Health (UF)

	c_sethealth(0.percent)

Set Sanity (UF)

	c_setsanity(0.percent)

Invincibility (UF)

	c_godmode()

Spawning Items

Pre-fabricated (aka prefab) names are used to identify objects in the game. A list of all prefab names can be found on this Don't Starve Wiki page.

Spawning 1 item

	DebugSpawn("prefabname")

Spawning more than 1 item

	for x = 1, 40 do DebugSpawn("prefabname") end

Spawning items (UF)

	c_spawn("prefabname", amount)

Spawning items directly into inventory (UF)

	c_give("prefabname", amount)

Only spawn items that can be stored in your inventory with this command
