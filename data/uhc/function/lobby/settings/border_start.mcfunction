
execute if score @s book matches 41 run scoreboard players remove #border_start border 10
execute if score @s book matches 42 run scoreboard players add #border_start border 10

execute if score #border_start border matches 101.. run scoreboard players set #border_start border 0
execute if score #border_start border matches ..-1 run scoreboard players set #border_start border 100

execute if score 00000000-0000-0000-0000-000000000001 border matches 1 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "邊界啟動時間", color: "gold"}, " | ", {score: {name: "#border_start", objective: "border"}, color: "yellow", extra: ["分鐘"]}]