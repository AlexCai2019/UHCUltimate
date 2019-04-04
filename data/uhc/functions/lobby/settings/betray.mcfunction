#########################################################
# UHC Project 
# Name    : betray.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust betrayer settings.
#########################################################

#########################################################
# UHC Project 
# Name    : border_mode.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust border_mode settings.
#########################################################

execute if entity @a[scores={book=106}] run scoreboard players add @e[tag=book] betray 1
execute if entity @a[scores={book=107}] run scoreboard players remove @s betray_num 1
execute if entity @a[scores={book=108}] run scoreboard players add @s betray_num 1
execute if entity @a[scores={book=109}] run scoreboard players remove @s betray_time 5
execute if entity @a[scores={book=110}] run scoreboard players add @s betray_time 5
execute if entity @a[scores={book=111}] run scoreboard players remove @s betray_tp 20
execute if entity @a[scores={book=112}] run scoreboard players add @s betray_tp 20

scoreboard players set @e[tag=book,scores={betray=2..}] betray 0
scoreboard players set @s[scores={betray_num=15..}] betray_num 1
scoreboard players set @s[scores={betray_num=..0}] betray_num 15
scoreboard players set @s[scores={betray_time=76..}] betray_time 5
scoreboard players set @s[scores={betray_time=..4}] betray_time 75
scoreboard players set @s[scores={betray_tp=81..}] betray_tp 20
scoreboard players set @s[scores={betray_tp=..19}] betray_tp 80
