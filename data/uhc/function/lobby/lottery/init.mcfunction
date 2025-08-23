#########################################################
# UHC Project 
# Name    : init.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : Yes. Execute as tag=lottery.
# func    : Lottery start
#########################################################

scoreboard players reset @a lottery
data modify block ~ ~1 ~ front_text.messages set value ["", "請稍後片刻...", "", ""]
function uhc:lobby/lottery/fast/root