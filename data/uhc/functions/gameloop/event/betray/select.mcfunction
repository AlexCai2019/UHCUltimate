#########################################################
# UHC Project 
# Name    : select.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/betray
# Loop    : No. Execute as and at tag=main
# func    : Select betrayers.
#########################################################

tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"背叛者小隊","color":"gold"},{"text":" | ","color":"white"},{"text":"啟動","color":"red"}]}
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~

execute if score @s betray_num matches 1 run tag @r[gamemode=survival,limit=1] add betrayer
execute if score @s betray_num matches 2 run tag @r[gamemode=survival,limit=2] add betrayer
execute if score @s betray_num matches 3 run tag @r[gamemode=survival,limit=3] add betrayer
execute if score @s betray_num matches 4 run tag @r[gamemode=survival,limit=4] add betrayer
execute if score @s betray_num matches 5 run tag @r[gamemode=survival,limit=5] add betrayer
execute if score @s betray_num matches 6 run tag @r[gamemode=survival,limit=6] add betrayer
execute if score @s betray_num matches 7 run tag @r[gamemode=survival,limit=7] add betrayer
execute if score @s betray_num matches 8 run tag @r[gamemode=survival,limit=8] add betrayer
execute if score @s betray_num matches 9 run tag @r[gamemode=survival,limit=9] add betrayer
execute if score @s betray_num matches 10 run tag @r[gamemode=survival,limit=10] add betrayer
execute if score @s betray_num matches 11 run tag @r[gamemode=survival,limit=11] add betrayer
execute if score @s betray_num matches 12 run tag @r[gamemode=survival,limit=12] add betrayer
execute if score @s betray_num matches 13 run tag @r[gamemode=survival,limit=13] add betrayer
execute if score @s betray_num matches 14 run tag @r[gamemode=survival,limit=14] add betrayer
execute if score @s betray_num matches 15 run tag @r[gamemode=survival,limit=15] add betrayer

title @a[tag=betrayer] title {"text":"你成為了背叛者","color":"red"}
title @a[tag=betrayer] subtitle {"text":"","extra":[{"text":"你的隊友:"},{"selector":"@a[tag=betrayer]","italic":true}]}
tellraw @a[tag=betrayer] {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"你的隊友:"},{"selector":"@a[tag=betrayer]"}]}

scoreboard players set @a lava 0
scoreboard players set @s betray_time 999