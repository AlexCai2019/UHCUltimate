
execute if score @s choose_team matches 1 run team join solo
execute if score @s choose_team matches 2 run team join spec
execute if score @s choose_team matches 3.. if score @s team_permission matches 1 run function uhc:lobby/settings/self_team/need_permission
execute at @s run playsound entity.experience_orb.pickup voice @s ~ ~ ~
scoreboard players reset @s choose_team