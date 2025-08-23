#########################################################
# UHC Project 
# Name    : end.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : No.
# func    : Lottery end
#########################################################

schedule function uhc:lobby/lottery/end_sound 15
scoreboard players set @e[type=armor_stand, tag=lottery] lottery_count 0