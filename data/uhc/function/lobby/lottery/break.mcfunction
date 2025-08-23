#########################################################
# UHC Project 
# Name    : break.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : Yes. Execute as tag=lottery.
# func    : Force stop lottery
#########################################################

schedule clear uhc:lobby/lottery/fast/root
schedule clear uhc:lobby/lottery/middle/root
schedule clear uhc:lobby/lottery/slow/root

function uhc:lobby/lottery/end