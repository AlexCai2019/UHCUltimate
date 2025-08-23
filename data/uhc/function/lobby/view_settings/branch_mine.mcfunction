tellraw @s ["", {text: "魚骨懲罰", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "branch_limit"}, color: "yellow", extra: [{translate: "block.minecraft.stone"}]}]

function uhc:lobby/view_settings/boolean {objective: "branch_position", name: "魚骨顯示座標"}

execute if score 00000000-0000-0000-0000-000000000001 branch_bomb matches 1 run return run tellraw @s ["", {text: "魚骨隨機爆炸", color: "gold"}, " | ", {translate: "options.on", color: "green"}, " | ", {text: "容許", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "branch_bomb_num"}, color: "yellow", extra: ["次"]}]
tellraw @s ["", {text: "魚骨隨機爆炸", color: "gold"}, " | ", {translate: "options.off", color: "red"}]