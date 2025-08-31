#########################################################
# UHC Project 
# Name    : death.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : No. Execute by dead players.
# func    : Dead message.
#########################################################

#death
gamemode spectator @s
scoreboard players set @s death 0
spawnpoint @s ~ ~ ~
execute if score 00000000-0000-0000-0000-000000000001 spec_permission matches 0 run effect give @s blindness 999999 0 true
execute as @a at @s run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~
#effect give @s night_vision 999999 0 true

#tag
tag @s remove sky
tag @s remove gnd
tag @s remove nether

#pearl tear
execute if score 00000000-0000-0000-0000-000000000001 pearl_tear matches 1 if entity @s[scores={pearl_own=1..}, tag=!pearl_used] run function uhc:apply/pearl_tear/dead

#judge system
execute if entity @s[team=solo, tag=!died] run kill @e[tag=ref, tag=solo, limit=1]
execute if entity @s[team=red] unless entity @a[team=red, gamemode=survival] run kill @e[tag=ref, tag=r]
execute if entity @s[team=blue] unless entity @a[team=blue, gamemode=survival] run kill @e[tag=ref, tag=b]
execute if entity @s[team=green] unless entity @a[team=green, gamemode=survival] run kill @e[tag=ref, tag=gr]
execute if entity @s[team=yellow] unless entity @a[team=yellow, gamemode=survival] run kill @e[tag=ref, tag=y]
execute if entity @s[team=purple] unless entity @a[team=purple, gamemode=survival] run kill @e[tag=ref, tag=pr]
execute if entity @s[team=gray] unless entity @a[team=gray, gamemode=survival] run kill @e[tag=ref, tag=gy]
execute if entity @s[team=red_dark] unless entity @a[team=red_dark, gamemode=survival] run kill @e[tag=ref, tag=rd]
execute if entity @s[team=blue_dark] unless entity @a[team=blue_dark, gamemode=survival] run kill @e[tag=ref, tag=bd]
execute if entity @s[team=green_dark] unless entity @a[team=green_dark, gamemode=survival] run kill @e[tag=ref, tag=grd]
execute if entity @s[team=gold] unless entity @a[team=gold, gamemode=survival] run kill @e[tag=ref, tag=yd]
execute if entity @s[team=pink] unless entity @a[team=pink, gamemode=survival] run kill @e[tag=ref, tag=pk]
execute if entity @s[team=gray_dark] unless entity @a[team=gray_dark, gamemode=survival] run kill @e[tag=ref, tag=gyd]
execute if entity @s[team=aqua] unless entity @a[team=aqua, gamemode=survival] run kill @e[tag=ref, tag=aq]
execute if entity @s[team=aqua_dark] unless entity @a[team=aqua_dark, gamemode=survival] run kill @e[tag=ref, tag=aqd]
execute if entity @s[team=betrayer] unless entity @a[team=betrayer, gamemode=survival] run kill @e[tag=ref, tag=bty]

tag @s add died

scoreboard players set @s warn 0

execute store result score 剩餘隊伍 information run execute if entity @e[tag=ref]
execute store result score 剩餘人數 information run execute if entity @a[team=!spec, gamemode=survival]