#########################################################
# UHC Project 
# Name    : root.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/view_settings/
# Loop    : No. Execute as players clicking "view settins" sign.
# func    : Show all game settings to players in chat room.
#########################################################

#book0
tellraw @s {text: "***********************************************************", color: "green"}
#map size
tellraw @s ["", {text: "地圖大小", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "map_size"}, color: "yellow", extra: ["格"]}]
#random team number
tellraw @s ["", {text: "隨機分隊數量", color: "gold"}, " | ", {score: {name: "#team_num", objective: "random_team"}, color: "yellow", extra: ["隊"]}]
#self team permission
function uhc:lobby/view_settings/boolean {objective: "team_permission", name: "自由選隊"}
#spectator
function uhc:lobby/view_settings/boolean {objective: "spec_permission", name: "觀察者模式"}
#slow fall
function uhc:lobby/view_settings/boolean {objective: "slow_fall", name: "隨機傳送"}

#book1
tellraw @s {text: "-------------------------------", color: "aqua"}
#difficulty
tellraw @s ["", {text: "遊戲難度", color: "gold"}, " | ", {selector: "@e[type=marker, tag=difficulty, scores={difficulty=3}]"}]
#friend fire
function uhc:lobby/view_settings/boolean {objective: "friend_fire", name: "同隊傷害"}
#friend push
function uhc:lobby/view_settings/boolean {objective: "friend_push", name: "同隊推擠"}
#tab health
function uhc:lobby/view_settings/boolean {objective: "tab_health", name: "tab顯示血量"}
#name health
function uhc:lobby/view_settings/boolean {objective: "name_health", name: "名條顯示血量"}
#golden head
execute if score 00000000-0000-0000-0000-000000000001 gold_head matches 1 run tellraw @s ["", {text: "金頭顱模式", color: "gold"}, " | ", {translate: "options.on", color: "green"}, " | ", {selector: "@e[type=marker, tag=gh, scores={gh_mode=1}]"}]
execute if score 00000000-0000-0000-0000-000000000001 gold_head matches 0 run tellraw @s ["", {text: "金頭顱模式", color: "gold"}, " | ", {translate: "options.off", color: "red"}]
#night vision
function uhc:lobby/view_settings/boolean {objective: "night_vision", name: "夜視效果"}
#advancement announce
function uhc:lobby/view_settings/boolean {objective: "advance_announce", name: "成就通知"}
#diamond equipment craft
function uhc:lobby/view_settings/boolean {objective: "allow_diamond", name: "鑽裝合成"}
#diamond equipment craft
function uhc:lobby/view_settings/boolean {objective: "invisible", name: "隱形保護"}

#book2
tellraw @s {text: "-------------------------------", color: "aqua"}
#nether
function uhc:lobby/view_settings/boolean_with_time {name_objective: "nether_open", name: "開放地獄", time_objective: "nether_time", time: "關閉時間"}
#betrayer
execute if score 00000000-0000-0000-0000-000000000001 betray matches 1 run tellraw @s ["", {text: "背叛者小隊", color: "gold"}, " | ", {translate: "options.on", color: "green"}, " | ", {text: "人數", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "betray_num"}, color: "yellow", extra: ["人"]}, " | ", {text: "啟動時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "betray_time"}, color: "yellow", extra: ["分鐘"]}, " | ", {text: "公佈時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "betray_tp"}, color: "yellow", extra: ["分鐘"]}]
execute if score 00000000-0000-0000-0000-000000000001 betray matches 0 run tellraw @s ["", {text: "背叛者小隊", color: "gold"}, " | ", {translate: "options.off", color: "red"}]
#stew
function uhc:lobby/view_settings/boolean_format {objective: "stew_get", name: 'translate: "item.minecraft.suspicious_stew"'}
#potion
function uhc:lobby/view_settings/boolean {objective: "potion_brew", name: "釀造藥水"}
#notch apple
function uhc:lobby/view_settings/boolean_format {objective: "notch_apple", name: 'translate: "item.minecraft.enchanted_golden_apple"'}
#cut clean
function uhc:lobby/view_settings/boolean {objective: "cut_clean", name: "物品免燒"}
#exchange
function uhc:lobby/view_settings/boolean {objective: "exchange", name: "礦物交換"}

#book3
tellraw @s {text: "-------------------------------", color: "aqua"}
#border mode
execute if score 00000000-0000-0000-0000-000000000001 border_on matches 1 run function uhc:lobby/view_settings/border_on
execute if score 00000000-0000-0000-0000-000000000001 border_on matches 0 run tellraw @s ["", {text: "特殊邊界模式", color: "gold"}, " | ", {translate: "options.off", color: "red"}]
#time stop
execute if score 00000000-0000-0000-0000-000000000001 day_stop matches 1 if score 00000000-0000-0000-0000-000000000005 day_mode matches 1 run tellraw @s ["", {text: "日夜暫停", color: "gold"}, " | ", {translate: "options.on", color: "green"}, " | ", {text: "狀態", color: "gold"}, " | ", {text: "永晝", color: "light_purple"}, " | ", {text: "啟動時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "day_time"}, color: "yellow", extra: ["分鐘"]}]
execute if score 00000000-0000-0000-0000-000000000001 day_stop matches 1 if score 00000000-0000-0000-0000-000000000006 day_mode matches 1 run tellraw @s ["", {text: "日夜暫停", color: "gold"}, " | ", {translate: "options.on", color: "green"}, " | ", {text: "狀態", color: "gold"}, " | ", {text: "永夜", color: "light_purple"}, " | ", {text: "啟動時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "day_time"}, color: "yellow", extra: ["分鐘"]}]
execute if score 00000000-0000-0000-0000-000000000001 day_stop matches 0 run tellraw @s ["", {text: "日夜暫停", color: "gold"}, " | ", {translate: "options.off", color: "red"}]
#monster clean
function uhc:lobby/view_settings/boolean_with_time {name_objective: "monster_clean", name: "清除怪物", time_objective: "monster_time", time: "清除時間"}
#hide name
function uhc:lobby/view_settings/boolean_with_time {name_objective: "hide_name", name: "隱藏名條", time_objective: "hide_time", time: "隱藏時間"}
#glowing
function uhc:lobby/view_settings/boolean_with_time {name_objective: "glowing", name: "玩家發光", time_objective: "glow_time", time: "發光時間"}


#book4
tellraw @s {text: "-------------------------------", color: "aqua"}
#weather fix
execute if score 00000000-0000-0000-0000-000000000001 weather_fix matches 1 run function uhc:lobby/view_settings/weather_fix
execute if score 00000000-0000-0000-0000-000000000001 weather_fix matches 0 run tellraw @s ["", {text: "天氣恆定", color: "gold"}, " | ", {translate: "options.off", color: "red"}]
#sky limit
execute if score 00000000-0000-0000-0000-000000000001 sky_limit matches 1 run tellraw @s ["", {text: "限制制空", color: "gold"}, " | ", {translate: "options.on", color: "green"}, " | ", {text: "限制", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "sky_height"}, color: "yellow", extra: ["格"]}, " | ", {text: "啟動時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "sky_time"}, color: "yellow", extra: ["分鐘"]}]
execute if score 00000000-0000-0000-0000-000000000001 sky_limit matches 0 run tellraw @s ["", {text: "限制制空", color: "gold"}, " | ", {translate: "options.off", color: "red"}]
#ground limit
execute if score 00000000-0000-0000-0000-000000000001 ground_limit matches 1 run tellraw @s ["", {text: "限制遁地", color: "gold"}, " | ", {translate: "options.on", color: "green"}, " | ", {text: "限制", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "ground_height"}, color: "yellow", extra: ["格"]}, " | ", {text: "啟動時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "ground_time"}, color: "yellow", extra: ["分鐘"]}]
execute if score 00000000-0000-0000-0000-000000000001 ground_limit matches 0 run tellraw @s {text: "", "extra": [{text: "限制遁地", color: "gold"}, " | ", {translate: "options.off", color: "red"}]}
#final room
function uhc:lobby/view_settings/boolean_with_time {name_objective: "room", name: "決戰房間", time_objective: "room_time", time: "傳送時間"}

#book5
tellraw @s {text: "-------------------------------", color: "aqua"}
#brahcn mine penalty
execute if score 00000000-0000-0000-0000-000000000001 branch_mine matches 1 run function uhc:lobby/view_settings/branch_mine
execute if score 00000000-0000-0000-0000-000000000001 branch_mine matches 0 run tellraw @s ["", {text: "魚骨懲罰", color: "gold"}, " | ", {translate: "options.off", color: "red"}]
#random silverfish
function uhc:lobby/view_settings/boolean {objective: "rand_silverfish", name: "隨機蠹魚"}
#random goledn apple
function uhc:lobby/view_settings/boolean {objective: "rand_apple", name: "隨機金蘋果"}
#reverse craft
#execute if score 00000000-0000-0000-0000-000000000001 reverse_craft matches 1 run tellraw @s {text: "", "extra": [{text: "逆向合成", color: "gold"}, " | ", {translate: "options.on", color: "green"}]}
#execute if score 00000000-0000-0000-0000-000000000001 reverse_craft matches 0 run tellraw @s {text: "", "extra": [{text: "逆向合成", color: "gold"}, " | ", {translate: "options.off", color: "red"}]}
#saddle craft
function uhc:lobby/view_settings/boolean {objective: "saddle", name: "人造馬鞍"}
#fish bucket craft
function uhc:lobby/view_settings/boolean {objective: "fish_bucket", name: "魚桶合成"}
#nerf arrow
function uhc:lobby/view_settings/boolean {objective: "nerf_arrow", name: "弓弩削弱"}
#nerf crossbow
function uhc:lobby/view_settings/boolean {objective: "nerf_crossbow", name: "貫穿懲罰"}
#random chest
execute if score 00000000-0000-0000-0000-000000000001 random_chest matches 1 run tellraw @s ["", {text: "隨機物資箱", color: "gold"}, " | ", {translate: "options.on", color: "green"}, " | ", {text: "數量", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "chest_num"}, color: "yellow", extra: ["個"]}]
execute if score 00000000-0000-0000-0000-000000000001 random_chest matches 0 run tellraw @s ["", {text: "隨機物資箱", color: "gold"}, " | ", {translate: "options.off", color: "red"}]
#fish rush
function uhc:lobby/view_settings/boolean {objective: "fish_rush", name: "釣魚狂熱"}
#pearl_tear
function uhc:lobby/view_settings/boolean {objective: "pearl_tear", name: "碧藍之淚"}
#shadow-invisible
function uhc:lobby/view_settings/boolean {objective: "shadow_invisible", name: "隱身黑暗"}
#no-warden
function uhc:lobby/view_settings/boolean {objective: "warden_spawn", name: "伏守生成"}
#initial supplies
function uhc:lobby/view_settings/boolean {objective: "init_supply", name: "初始物資"}

tellraw @s {text: "***********************************************************", color: "green"}

scoreboard players reset @a view_settings
scoreboard players enable @a view_settings
