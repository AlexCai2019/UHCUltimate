#########################################################
# UHC Project 
# Name    : branch_mine.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust branch_mine.
#########################################################

execute if entity @a[scores={book=100}] run scoreboard players add @e[tag=book] branch_mine 1
execute if entity @a[scores={book=101}] run scoreboard players remove @s branch_limit 100
execute if entity @a[scores={book=102}] run scoreboard players add @s branch_limit 100
execute if entity @a[scores={book=103}] run scoreboard players add @e[tag=book] branch_position 1

scoreboard players set @e[tag=book,scores={branch_mine=2..}] branch_mine 0
scoreboard players set @s[scores={branch_limit=..99}] branch_limit 1200
scoreboard players set @s[scores={branch_limit=1201..}] branch_limit 100
scoreboard players set @e[tag=book,scores={branch_position=2..}] branch_position 0