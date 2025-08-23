#########################################################
# UHC Project 
# Name    : init.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : Yes. Execute as tag=lottery.
# func    : Lottery start
#########################################################

scoreboard players reset @a lottery
data merge block ~ ~1 ~ {front_text: {has_glowing_text: 1b, color: "white", messages: ['{text: ""}','{text: "請稍後片刻..."}','{text: ""}','{text: ""}']}}
function uhc:lobby/lottery/fast