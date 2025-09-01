
execute if score @s book matches 43 run scoreboard players remove #border_end border 32
execute if score @s book matches 44 run scoreboard players add #border_end border 32

execute if score #border_end border matches 113.. run scoreboard players set #border_end border 16
execute if score #border_end border matches ..15 run scoreboard players set #border_end border 112

execute if score 00000000-0000-0000-0000-000000000001 border matches 1 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "邊界最終大小", color: "gold"}, " | ", {score: {name: "#border_end", objective: "border"}, color: "yellow", extra: ["格"]}]