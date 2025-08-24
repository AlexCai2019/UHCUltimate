#########################################################
# UHC Project 
# Name    : lobby_system.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/
# Loop    : Yes. Execute as tag=main.
# func    : Handle all functions looping in lobby stage.
#########################################################

#join_game
execute as @a[team=] run function uhc:lobby/join_game

#give_book
function uhc:lobby/book/give_book

#effect
effect give @a saturation infinite 0 true
effect give @a resistance infinite 9 true
effect give @a weakness infinite 9 true

#kill item
kill @e[type=item]

#trigger
scoreboard players enable @a[gamemode=creative] book
scoreboard players enable @a choose_team

#info display
execute store result score 人數 information if entity @a[team=!spec]

#show
execute as 00000000-0000-0000-0000-00000000000a at @s run rotate @s ~4 ~ 
execute at @s run particle portal ~ ~ ~ .5 .25 .5 .5 1 force

#bee
execute at @e[tag=bee1] run function uhc:lobby/bee

#initial supply
execute unless entity @a[tag=set_supply] at @s if data storage uhc:data root.init_items run data modify block ~3 ~ ~7 Items set from storage uhc:data root.init_items
execute unless entity @a[tag=set_supply] at @s unless data storage uhc:data root.init_items run data remove block ~3 ~ ~7 Items
execute at @s unless block ~3 ~ ~7 light_blue_shulker_box run setblock ~3 ~ ~7 light_blue_shulker_box

#signs
execute if entity @a[scores={lottery=1}] as @e[type=armor_stand, tag=lottery] at @s run function uhc:lobby/lottery/init
execute as @a[scores={view_settings=1}] run function uhc:lobby/view_settings/root

#choose team controller
execute as @a[scores={choose_team=1..}] run function uhc:lobby/settings/self_team/root

#book setting controller
execute if entity @a[scores={book=1..}] run function uhc:lobby/book/book_controller
