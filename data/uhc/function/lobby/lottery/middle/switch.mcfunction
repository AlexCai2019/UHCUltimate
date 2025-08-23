
scoreboard players add @s lottery_count 1
execute at @s run playsound block.note_block.harp master @a ~ ~ ~ 0.75
execute unless score @s lottery_count matches 37 run return run schedule function uhc:lobby/lottery/middle/root 5
schedule function uhc:lobby/lottery/slow/root 15