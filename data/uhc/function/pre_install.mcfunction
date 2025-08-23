###################################################
# UHC Project 
# Name    : pre_install.mcfunction 
# Made by : jelly99709 
# Path    : /
# Loop    : No. Called by #load tag.
# func    : Install hint. 
###################################################

tellraw @a [{text: "UHCE >>> ", color: "gray"}, {text: "UHC: Evolve", color: "gold"}, {text: " 資料包載入完成", color: "white"}]
execute unless entity 00000000-0000-0000-0000-000000000001 run tellraw @a ["", {text: "UHCE >>> ", color: "gray"}, "選定中心點後， 請輸入 ", {text: "/function uhc:start", color: "aqua"}, " 或 ", {text: "點擊此處", color: "light_purple", hover_event: {action: "show_text", value: "點此建立遊戲大廳"}, click_event: {action: "run_command", command: "/function uhc:start"}}, " 建立遊戲大廳"]