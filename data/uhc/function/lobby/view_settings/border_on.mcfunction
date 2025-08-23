
execute if score 00000000-0000-0000-0000-000000000003 border_mode matches 1 run tellraw @s \
[\
	"",\
	{text: "邊界模式", color: "gold"}, " | ", {text: "漸縮", color: "light_purple"}, " | ",\
	{text: "啟動時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "border_start"}, color: "yellow", extra: ["分鐘"]}, " | ",\
	{text: "收縮", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "border_move"}, color: "yellow", extra: ["分鐘"]}, " | ",\
	{text: "最終大小", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "border_end"}, color: "yellow", extra: ["格"]}\
]

execute if score 00000000-0000-0000-0000-000000000004 border_mode matches 1 run tellraw @s \
[\
	"",\
	{text: "邊界模式", color: "gold"}, " | ", {text: "競技場", color: "light_purple"}, " | ",\
	{text: "啟動時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "border_start"}, color: "yellow", extra: ["分鐘"]}, " | ",\
	{text: "大小", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "border_end"}, color: "yellow", extra: ["格"]}\
]

execute if score 00000000-0000-0000-0000-00000000000b border_mode matches 1 run tellraw @s \
[\
	"",\
	{text: "邊界模式", color: "gold"}, " | ", {text: "隨機縮圈", color: "light_purple"}, " | ",\
	{text: "啟動時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "border_start"}, color: "yellow", extra: ["分鐘"]}, " | ",\
	{text: "冷卻", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "BR_cool_time"}, color: "yellow", extra: ["分鐘"]}, " | ",\
	{text: "收縮", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "BR_shrink_time"}, color: "yellow", extra: ["分鐘"]}\
]