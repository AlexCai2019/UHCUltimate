#########################################################
# UHC Project 
# Name    : second.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : Yes
# func    : Show notifier and adjust timer_sec each second.
#########################################################

#檢查
execute if function uhc:start_countdown/check_violation/has_violation run return run function uhc:start_countdown/cancel

execute if score #start_second timer matches 0 run return run function uhc:go

title @a title [{text: "遊戲開始 倒數", color: "yellow"}, {score: {name: "#start_second", objective: "timer"}, color: "red", bold: true, italic: true}, "秒"]
execute if score start_second timer matches 10 as @e[type=#uhc:hostile_normal] at @s run tp @s ~ -999 ~
execute if score start_second timer matches ..5 as @a at @s run playsound minecraft:block.note_block.hat block @s ~ ~ ~
scoreboard players remove #start_second timer 1