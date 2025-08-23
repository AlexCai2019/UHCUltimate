#########################################################
# UHC Project 
# Name    : end_sound.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : Yes. Execute as tag=lottery.
# func    : Play lottery end sound
#########################################################

execute at @e[type=armor_stand, tag=lottery] run data modify block ~ ~1 ~ front_text.messages set value [{text: "", click_event: {action: "run_command", command: "trigger lottery set 1"}}, "抽籤機", "", ""]
execute at @e[type=armor_stand, tag=lottery] run playsound entity.player.levelup master @a ~ ~ ~ 0.5
scoreboard players reset @a lottery
scoreboard players enable @a lottery