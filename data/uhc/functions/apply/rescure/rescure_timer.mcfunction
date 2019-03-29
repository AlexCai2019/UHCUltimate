###################################################
# UHC Project 
# Name    : rescure_timer.mcfunction 
# Made by : jelly99709 
# Path    : /apply/rescure
# Loop    : Yes. Execute as knocked down players.
# func    : Count rescure time.
###################################################

execute if entity @a[tag=!knocked_down,distance=..1,nbt={SelectedItem:{id:"minecraft:shield",count:1b}}] run scoreboard players add @s rescure_tick 1
execute unless entity @a[tag=!knocked_down,distance=..1,nbt={SelectedItem:{id:"minecraft:shield",count:1b}}] run scoreboard players add @s rescure_tick 0
execute unless entity @a[tag=!knocked_down,distance=..1,nbt={SelectedItem:{id:"minecraft:shield",count:1b}}] run scoreboard players add @s rescure_time 0
scoreboard players add @s[scores={recure_tick=5}] rescure_time 1
execute if score @s rescure_tick matches 5 run playsound minecraft:item.axe.strip ambient @a ~ ~ ~ 1 2
scoreboard players set @s[scores={recure_tick=5}] rescure_tick 0
tag @s[scores={rescure_time=5}] remove  knocked_down
tag @s[scores={rescure_time=5}] add relife