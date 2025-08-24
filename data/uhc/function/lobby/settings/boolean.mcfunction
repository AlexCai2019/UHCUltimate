
$execute store success score 00000000-0000-0000-0000-000000000001 $(objective) if score 00000000-0000-0000-0000-000000000001 $(objective) matches 0

$execute if score 00000000-0000-0000-0000-000000000001 $(objective) matches 1 run return run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "$(name)", color: "gold"}, " | ", {translate: "options.on", color: "green"}]
$tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "$(name)", color: "gold"}, " | ", {translate: "options.off", color: "red"}]