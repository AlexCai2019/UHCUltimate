
execute if score @s book matches 45 run scoreboard players remove #border_move border 10
execute if score @s book matches 46 run scoreboard players add #border_move border 10

execute if score #border_move border matches 61.. run scoreboard players set #border_move border 20
execute if score #border_move border matches ..19 run scoreboard players set #border_move border 60

execute if score 00000000-0000-0000-0000-000000000001 border matches 1 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "邊界收縮時間", color: "gold"}, " | ", {score: {name: "#border_move", objective: "border"}, color: "yellow", extra: ["分鐘"]}]