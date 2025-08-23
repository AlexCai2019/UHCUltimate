
scoreboard players add @s lottery_count 1
execute at @s run playsound block.note_block.harp master @a ~ ~ ~ 0.75
execute unless score @s lottery_count matches 30 run return run schedule function uhc:lobby/lottery/fast/root 2
schedule function uhc:lobby/lottery/middle/root 5