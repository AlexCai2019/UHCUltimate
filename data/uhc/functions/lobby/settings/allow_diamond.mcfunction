#########################################################
# UHC Project 
# Name    : allow_diamond.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust start diamond crafting settings.
#########################################################

scoreboard players add @e[tag=book] allow_diamond 1
scoreboard players set @e[tag=book,scores={allow_diamond=2..}] allow_diamond 0