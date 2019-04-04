#########################################################
# UHC Project 
# Name    : nerf_arrow.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust nerf_arrow(scoreboard).
#########################################################

execute if entity @a[scores={book=104}] run scoreboard players add @e[tag=book] nerf_arrow 1
execute if entity @a[scores={book=105}] run scoreboard players add @e[tag=book] no_burn 1

scoreboard players set @e[tag=book,scores={nerf_arrow=2}] nerf_arrow 0
scoreboard players set @e[tag=book,scores={no_burn=2}] no_burn 0