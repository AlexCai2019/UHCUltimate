#########################################################
# UHC Project 
# Name    : branch_penalty.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/apply/
# Loop    : No. Execute by players.
# func    : Branch-mined penalty effect.
#########################################################

effect give @s glowing 30 0 true
effect give @s weakness 30 1 true
effect give @s slowness 30 3 true
effect give @s mining_fatigue 30 1 true
clear @s #uhc:pickaxe

tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"selector":"@s"},{"text":" 受到魚骨懲罰","color":"white"}]}
execute if score 00000000-0000-0000-0000-000000000001 branch_position matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"selector":"@s"},{"text":" 目前座標: ","color":"white"},{"nbt":"Pos[0]","entity":"@s","color":"aqua"},{"text":" "},{"nbt":"Pos[1]","entity":"@s","color":"aqua"},{"text":" "},{"nbt":"Pos[2]","entity":"@s","color":"aqua"},{"text":" "}]}
execute as @a at @s run playsound minecraft:block.anvil.land ambient @s ~ ~ ~

scoreboard players set @s stone_penalty 0