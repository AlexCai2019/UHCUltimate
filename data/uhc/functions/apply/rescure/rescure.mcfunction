###################################################
# UHC Project 
# Name    : rescure.mcfunction 
# Made by : jelly99709 
# Path    : /apply/rescure
# Loop    : Yes. execute as @e[tag=main]
# func    : Rescure system.
###################################################

#health display
scoreboard players operation @a modify_health = @a health
scoreboard players operation @a modify_health -= const10 X

#knocked down
execute at @a[scores={health=..20},tag=!knocked_down] run playsound minecraft:enchant.thorns.hit ambient @a ~ ~ ~ 3 1.5
tag @a[scores={health=..20},tag=!knocked_down] add knocked_down

#give effects
effect give @a[tag=knocked_down] minecraft:weakness 1 255 true
effect give @a[tag=knocked_down] minecraft:slowness 1 4 true
effect give @a[tag=knocked_down] minecraft:mining_fatigue 1 255 true
effect give @a[tag=knocked_down] minecraft:glowing 999999 0 true
effect give @a[tag=knocked,nbt=!{ActiveEffects:[{Id:20b}]}] minecraft:wither 999999 0 true

#rescure
execute as @a[tag=knocked_down] at @s if entity @a[tag=!knocked_down,distance=..1,nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run function uhc:apply/resure/rescure_timer

#relife
effect clear @a[tag=relife] minecraft:weakness
effect clear @a[tag=relife] minecraft:slowness
effect clear @a[tag=relife] minecraft:mining_fatigue
effect clear @a[tag=relife] minecraft:glowing
effect clear @a[tag=relife] miencraft:wither
effect give @a[tag=relife] minecraft:instant_health 1 99 true
effect give @a[tag=relife] minecraft:instant_damage 1 1 true
scoreboard players operation @a[tag=relife] temp_hurt -= const13 XIII
scoreboard players operation @a[tag=relife] temp_hurt -= const5 V
