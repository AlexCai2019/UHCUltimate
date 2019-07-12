###################################################
# UHC Project 
# Name    : game1.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. Execute as tag=main
# func    : Game machanism 1.
###################################################

#action bar information
execute as @a run title @s actionbar {"text":"","color":"light_purple","bold":true,"extra":[{"text":"中心座標: ("},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posX"}},{"text":","},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posZ"}},{"text":")  擊殺數: "},{"score":{"name":"@s","objective":"temp_kill"}},{"text":"  挖掘石頭數: "},{"score":{"name":"@s","objective":"temp_stone"}}]}

#join game
execute as @a[tag=!game_start] run function uhc:gameloop/join_game

#damage notifier
execute unless entity @e[tag=win] as @a[scores={warn=1..},gamemode=survival] run function uhc:gameloop/damage

#betrayer lava limit
#execute if entity @s[scores={betray_time=999,betray_tp=..900}] if entity @a[tag=betrayer,scores={lava=1..}] run function uhc:gameloop/event/betray/lava

#stew_take
execute if score @s stew_get matches 0 run clear @a suspicious_stew

#potion_reinforce
#execute if score @s potion_reinforce matches 0 as @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}}] run data merge entity @s {Item:{id:"minecraft:glowstone"}}

#nether
execute if score @s nether_open matches ..0 run function uhc:gameloop/event/nether_penalty

#cut clean
execute if score @s cut_clean matches 1 run function uhc:apply/cut_clean

#branch_bomb
execute as @e[type=item,nbt={Item:{id:"minecraft:tropical_fish_spawn_egg"}}] at @s run function uhc:apply/branch_bomb

#auto crossbow
execute if score @s auto_crossbow matches 1 as @a[nbt={SelectedItem:{id:"minecraft:crossbow"},Inventory:[{id:"minecraft:arrow"}]}] unless entity @s[nbt={SelectedItem:{tag:{Charged:1b}}}] unless data entity @s SelectedItem.tag.Enchantments run function uhc:apply/auto_crossbow

#random apple
#execute if score @s rand_apple matches 1 at @a[scores={leaf=1..,shear=0}] run function uhc:apply/rand_apple
#scoreboard players set @a[scores={shear=1..}] shear 0

#fish bucket craft correction
execute as @a[scores={pufferfish=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/pufferfish