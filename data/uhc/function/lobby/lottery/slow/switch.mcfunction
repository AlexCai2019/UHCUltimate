

scoreboard players add @s lottery_count 1
execute at @s run playsound block.note_block.harp master @a ~ ~ ~ 0.75
execute unless score @s lottery_count matches 39 run return run schedule function uhc:lobby/lottery/slow/root 15
function uhc:lobby/lottery/end