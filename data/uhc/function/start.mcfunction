###################################################
# UHC Project 
# Name    : start.mcfunction 
# Made by : jelly99709 
# Path    : /
# Loop    : No
# func    : To start game settings.
###################################################

#gamerule
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule disableElytraMovementCheck true
gamerule spectatorsGenerateChunks false
gamerule spawnRadius 0
gamerule disableRaids true
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doInsomnia false
gamerule playersSleepingPercentage 150
gamerule doVinesSpread false
defaultgamemode survival
weather clear
difficulty hard
time set day

#command region settings
fill ~-1 -64 ~-1 ~2 -61 ~3 bedrock hollow
fill ~ -63 ~2 ~1 -63 ~2 end_portal

#armor_stand settings
execute align xz unless entity f-f-f-f-f run summon armor_stand ~ 150 ~ {CustomName: ["", {text: "UHC: ", color: "yellow", bold: true}, {text: "Ultimate", color: "light_purple", italic: true}], CustomNameVisible: true, NoGravity: true, Marker: false, Invisible: true, Invulnerable: true, Small: true, UUID: [I; 15, 983055, 983040, 15], DisabledSlots: 2096896, ShowArms: true, equipment: {head: {id: "player_head", components: {profile: {name: "jelly99709"}}}, mainhand: {id: "trident", components: {enchantment_glint_override: true}}, offhand: {id: "trident", components: {enchantment_glint_override: true}}}, Pose: {LeftArm: [330f, 90f, 0f], RightArm: [330f, 270f, 0f]}}

execute align xz run summon marker ~.5 -63 ~.5 {CustomName: {text: "✘", color: "dark_red"}, UUID: [I; 0, 0, 0, 0], Tags: ["book", "carry"]}
execute align xz run summon marker ~.5 -63 ~.5 {CustomName: {text: "✔", color: "green"}, UUID: [I; 0, 0, 0, 1], Tags: ["book", "carry"]}
execute align xz run summon marker ~.5 -64 ~.5 {CustomName: {translate: "options.difficulty.peaceful", color: "gray"}, UUID: [I; 0, 0, 0, 2], Tags: ["difficulty"]}
execute align xz run summon marker ~.5 -64 ~.5 {CustomName: {translate: "options.difficulty.easy", color: "green"}, UUID: [I; 0, 0, 0, 3], Tags: ["difficulty"]}
execute align xz run summon marker ~.5 -64 ~.5 {CustomName: {translate: "options.difficulty.normal", color: "yellow"}, UUID: [I; 0, 0, 0, 4], Tags: ["difficulty"]}
execute align xz run summon marker ~.5 -64 ~.5 {CustomName: {translate: "options.difficulty.hard", color: "red"}, UUID: [I; 0, 0, 0, 5], Tags: ["difficulty"]}
execute align xz run summon marker ~.5 -64 ~.5 {Tags: ["gh", "carry"], CustomName: {text: "標準", color: "dark_purple"}, UUID: [I; 0, 0, 0, 6]}
execute align xz run summon marker ~.5 -64 ~.5 {Tags: ["gh", "carry"], CustomName: {text: "快速", color: "dark_purple"}, UUID: [I; 0, 0, 0, 7]}

execute at 0-0-0-0-1 run summon marker ~1 ~ ~ {Tags: ["mode", "m1"], CustomName: {text: "漸縮", color: "red"}, UUID: [I; 0, 0, 0, 6]}
execute at 0-0-0-0-1 run summon marker ~1 ~ ~ {Tags: ["mode", "m2"], CustomName: {text: "競技場", color: "red"}, UUID: [I; 0, 0, 0, 7]}
execute at 0-0-0-0-1 run summon marker ~1 ~ ~ {Tags: ["mode", "m3", "carry"], CustomName: {text: "隨機縮圈", color: "red"}, UUID: [I; 0, 0, 0, 8]}
#===
execute at 0-0-0-0-1 run summon marker ~ ~ ~1 {Tags: ["sub2", "pause", "p1", "carry"], CustomName: {text: "永晝", color: "gold"}, UUID: [I; 0, 0, 0, 5]}
execute at 0-0-0-0-1 run summon marker ~ ~ ~1 {Tags: ["pause", "p2", "carry"], CustomName: {text: "永夜", color: "gold"}, UUID: [I; 0, 0, 0, 6]}
execute at 0-0-0-0-1 run summon marker ~1 ~ ~1 {Tags: ["sub3"], UUID: [I; 0, 0, 0, 7]}
execute at 0-0-0-0-1 run summon marker ~ ~1 ~2 {Tags: ["load"], UUID: [I; 0, 0, 0, 8], Rotation: [180.0f, 0.0f]}
execute at 0-0-0-0-1 run summon marker ~ 319 ~ {Tags: ["center"], UUID: [I; 0, 0, 0, 9]}
execute at 0-0-0-0-1 run summon armor_stand ~ 319 ~ {Tags: ["move"], Invisible: true, Invulnerable: true, Small: true, NoGravity: true, UUID: [I; 0, 0, 0, 12]} 
execute at 0-0-0-0-1 run summon marker ~ ~ ~ {Tags: ["weather", "w1", "carry"], CustomName: {text: "晴朗", color: "dark_gray"}, UUID: [I; 0, 0, 0, 13]}
execute at 0-0-0-0-1 run summon marker ~ ~ ~ {Tags: ["weather", "w2", "carry"], CustomName: {text: "下雨", color: "dark_gray"}, UUID: [I; 0, 0, 0, 14]}
execute at 0-0-0-0-1 run summon marker ~ ~ ~ {Tags: ["weather", "w3", "carry"], CustomName: {text: "雷暴", color: "dark_gray"}, UUID: [I; 0, 0, 0, 15]}
execute at 0-0-0-0-1 run summon marker ~ 151 ~ {Tags: ["set"], UUID: [I; 0, 0, 0, 18]}

#set initial supplies
execute at 0-0-0-0-1 run setblock ~ ~1 ~ light_blue_shulker_box replace

#set world center
execute at 0-0-0-0-1 run setworldspawn ~ 150 ~
execute at 0-0-0-0-1 run worldborder center ~-0.5 ~-0.5
worldborder set 496
execute at 0-0-0-0-1 run forceload add ~ ~

#construct lobby
execute at 0-0-0-0-1 run place template uhc:lobby_v7 ~-9 ~-1 ~-9
execute at 0-0-0-0-1 run setblock ~3 ~1 ~7 oak_wall_sign[facing=north]{front_text: {has_glowing_text: true, color: "white", messages: ["", {text: "初始物資"}, "", ""]}, is_waxed: true}

#scoreboard creat
#### state #########################################################
scoreboard objectives add state dummy {text: "遊戲狀態"}
scoreboard objectives add underclock dummy {text: "降頻"}
#### book0 #########################################################
scoreboard objectives add random_team dummy "隨機分隊"
scoreboard objectives add book trigger {text: "書本設定"}
scoreboard objectives add team_permission dummy {text: "選隊權限"}
scoreboard objectives add choose_team trigger {text: "選隊"}
scoreboard objectives add spec_permission dummy {text: "死亡觀察"}
scoreboard objectives add map_size dummy {text: "地圖大小"}
#### read map process ###############################################
scoreboard objectives add border dummy "邊界"
#### timer ##########################################################
scoreboard objectives add timer dummy
scoreboard objectives add timer_sec dummy {text: "秒計時器"}
scoreboard objectives add timer_min dummy {text: "分計時器"}
#### book1 ##########################################################
scoreboard objectives add difficulty dummy "遊戲難度"
scoreboard objectives add diff dummy {text: "遊戲難度"}
scoreboard objectives add slow_fall dummy {text: "緩降(active low)"}
scoreboard objectives add friend_fire dummy {text: "同隊傷害"}
scoreboard objectives add friend_push dummy {text: "同隊推擠"}
scoreboard objectives add tab_health dummy {text: "tab血量"}
scoreboard objectives add name_health dummy {text: "名條血量"}
scoreboard objectives add gold_head dummy {text: "金頭顱"}
scoreboard objectives add gh_mode dummy {text: "金頭顱模式"}
scoreboard objectives add night_vision dummy {text: "夜視效果"}
scoreboard objectives add allow_diamond dummy {text: "允許鑽裝"}
scoreboard objectives add invisible dummy {text: "隱形保護"}
#### book2 ##########################################################
scoreboard objectives add nether_open dummy {text: "開放地獄"}
scoreboard objectives add nether_time dummy {text: "地獄時間"}
scoreboard objectives add betray dummy {text: "背叛"}
scoreboard objectives add betray_time dummy {text: "背叛時間"}
scoreboard objectives add betray_tp dummy {text: "背叛傳送時間"}
scoreboard objectives add betray_num dummy {text: "背叛人數"}
scoreboard objectives add stew_get dummy {text: "可疑的湯"}
scoreboard objectives add potion_brew dummy {text: "釀造藥水"}
#scoreboard objectives add potion_regen dummy {text: "回復藥水"}
#scoreboard objectives add potion_reinforce dummy {text: "二級藥水"}
#scoreboard objectives add potion_turtle dummy {text: "龜仙藥水"}
scoreboard objectives add notch_apple dummy {text: "附魔金蘋果"}
scoreboard objectives add cut_clean dummy {text: "物品免燒"}
scoreboard objectives add exchange dummy {text: "礦物交換"}
scoreboard objectives add exchange_time dummy {text: "礦物交換冷卻"}
scoreboard objectives add advance_announce dummy {text: "成就通知"}
#### book3 ##########################################################
scoreboard objectives add border_on dummy {text: "啟動邊界模式"}
scoreboard objectives add border_mode dummy {text: "邊界模式"}
scoreboard objectives add border_move dummy {text: "收縮持續時間"}
scoreboard objectives add border_end dummy {text: "邊界最終大小"}
scoreboard objectives add BR_cool_time dummy {text: "隨機縮圈冷卻時間"}
scoreboard objectives add BR_shrink_time dummy {text: "隨機縮圈收縮時間"}
scoreboard objectives add day_stop dummy {text: "日夜暫停"}
scoreboard objectives add day_mode dummy {text: "暫停模式"}
scoreboard objectives add day_time dummy {text: "暫停時間"}
scoreboard objectives add monster_clean dummy {text: "清怪"}
scoreboard objectives add monster_time dummy {text: "清怪時間"}
scoreboard objectives add hide_name dummy {text: "隱藏名條"}
scoreboard objectives add hide_time dummy {text: "隱藏時間"}
scoreboard objectives add glowing dummy {text: "發光"}
scoreboard objectives add glow_time dummy {text: "發光時間"}
#### book4 ##########################################################
scoreboard objectives add weather_fix dummy {text: "固定天氣"}
scoreboard objectives add weather_mode dummy {text: "天氣狀態"}
scoreboard objectives add weather_time dummy {text: "天氣時間"}
scoreboard objectives add sky_limit dummy {text: "禁空"}
scoreboard objectives add sky_time dummy {text: "禁空時間"}
scoreboard objectives add sky_height dummy {text: "禁空高度"}
scoreboard objectives add ground_limit dummy {text: "禁地"}
scoreboard objectives add ground_time dummy {text: "禁地時間"}
scoreboard objectives add ground_height dummy {text: "禁地高度"}
scoreboard objectives add room dummy {text: "小房間"}
scoreboard objectives add room_time dummy {text: "小房間時間"}
#### book5 ##########################################################
scoreboard objectives add branch_mine dummy {text: "魚骨"}
scoreboard objectives add branch_limit dummy {text: "魚骨限制"}
scoreboard objectives add branch_position dummy {text: "魚骨座標"}
scoreboard objectives add branch_bomb dummy {text: "魚骨爆炸"}
scoreboard objectives add branch_bomb_num dummy {text: "魚骨爆炸次數"}
scoreboard objectives add rand_silverfish dummy {text: "隨機蠹魚"}
scoreboard objectives add rand_apple dummy {text: "隨機金蘋果"}
scoreboard objectives add saddle dummy {text: "合成馬鞍"}
scoreboard objectives add fish_bucket dummy {text: "合成魚桶"}
scoreboard objectives add nerf_arrow dummy {text: "弓箭削弱"}
#scoreboard objectives add auto_crossbow dummy {text: "自動弩機"}
scoreboard objectives add nerf_crossbow dummy {text: "貫穿懲罰"}
scoreboard objectives add random_chest dummy {text: "隨機物資箱"}
scoreboard objectives add chest_num dummy {text: "物資箱數量"}
scoreboard objectives add fish_rush dummy {text: "釣魚狂熱"}
scoreboard objectives add pearl_tear dummy {text: "珍珠之淚"}
scoreboard objectives add pearl_craft crafted:heart_of_the_sea {text: "合成珍珠之淚"}
scoreboard objectives add pearl_own dummy {text: "擁有珍珠之淚"}
scoreboard objectives add shadow_invisible dummy {text: "昏暗隱形"}
scoreboard objectives add warden_spawn dummy {text: "伏守生成"}
scoreboard objectives add init_supply dummy {text: "起始物資"}
scoreboard objectives add set_supply dummy {text: "設定起始物資"}
#### stats ############################################################
scoreboard objectives add information dummy {text: "遊戲資訊", color: "gold", "italic": true}
scoreboard objectives add health health {text: "血量"}
scoreboard objectives add death deathCount {text: "死亡"}
#####
scoreboard objectives add temp_kill playerKillCount {text: "殺人數量"}
scoreboard objectives add temp_stone mined:stone {text: "挖掘石頭"}
scoreboard objectives add temp_diamond mined:diamond_ore {text: "挖掘鑽石"}
scoreboard objectives add temp_gold mined:gold_ore {text: "挖掘黃金"}
scoreboard objectives add temp_stone_d mined:deepslate {text: "挖掘深板岩"}
scoreboard objectives add temp_diamond_d mined:deepslate_diamond_ore {text: "挖掘深板岩鑽石"}
scoreboard objectives add temp_gold_d mined:deepslate_gold_ore {text: "挖掘深板岩黃金"}
scoreboard objectives add temp_apple used:golden_apple {text: "使用金蘋果"}
scoreboard objectives add temp_gold_head used:totem_of_undying
scoreboard objectives add temp_hurt minecraft.custom:minecraft.damage_taken {text: "受到傷害"}
scoreboard objectives add temp_absorb minecraft.custom:minecraft.damage_absorbed {text: "吸收傷害"}
#####
scoreboard objectives add final_kill dummy {text: "最終殺人數量"}
scoreboard objectives add final_stone dummy {text: "最終挖掘石頭"}
scoreboard objectives add final_gold dummy {text: "最終挖掘黃金"}
scoreboard objectives add final_apple dummy {text: "最終使用金蘋果(1金頭顱=2金蘋果)"}
scoreboard objectives add final_diamond dummy {text: "最終挖掘鑽石"}
scoreboard objectives add final_hurt dummy {text: "最終受到傷害"}
#####
scoreboard objectives add warn minecraft.custom:minecraft.damage_taken {text: "受到傷害(通知)"}
#### position ################################################################
scoreboard objectives add posX dummy {text: "X座標"}
scoreboard objectives add posY dummy {text: "Y座標"}
scoreboard objectives add posZ dummy {text: "Z座標"}
#### other ####################################################################
#scoreboard objectives add remain dummy {text: "剩餘隊伍"}
scoreboard objectives add constant dummy "常數"
scoreboard objectives add I dummy {text: "常數1"}
scoreboard objectives add III dummy {text: "常數3"}
scoreboard objectives add V dummy {text: "常數5"}
scoreboard objectives add VII dummy {text: "常數7"}
scoreboard objectives add X dummy {text: "常數10"}
scoreboard objectives add XIII dummy {text: "常數13"}
scoreboard objectives add C dummy {text: "常數100"}
scoreboard objectives add sky_notifier dummy {text: "制空提醒"}
scoreboard objectives add gnd_notifier dummy {text: "遁地提醒"}
scoreboard objectives add sky_notifier2 dummy {text: "制空提醒2"}
scoreboard objectives add gnd_notifier2 dummy {text: "遁地提醒2"}
scoreboard objectives add nether_notifier dummy {text: "地獄提醒"}
scoreboard objectives add betray_notifier dummy {text: "背叛提醒"}
scoreboard objectives add stone_penalty mined:stone {text: "石頭懲罰"}
scoreboard objectives add stone_penalty_d mined:deepslate {text: "石頭懲罰-深板岩"}
#### battle royale border ####################################################
scoreboard objectives add BR_move dummy {text: "中心移動狀態"}
scoreboard objectives add BR_xdiff dummy {text: "X距離差"}
scoreboard objectives add BR_zdiff dummy {text: "Z距離差"}
scoreboard objectives add BR_factor dummy {text: "整數化因數"}
scoreboard objectives add BR_stage dummy {text: "BR階段"}
scoreboard objectives add n_I dummy {text: "常數-1"}
#### fish bucket #############################################################
scoreboard objectives add cod minecraft.crafted:minecraft.cod_bucket {text: "鱈魚桶"}
scoreboard objectives add salmon minecraft.crafted:minecraft.salmon_bucket {text: "鮭魚桶"}
scoreboard objectives add pufferfish minecraft.crafted:minecraft.pufferfish_bucket {text: "河豚桶"}
scoreboard objectives add tropicalfish minecraft.crafted:minecraft.tropical_fish_bucket {text: "熱帶魚桶"}
#### lottery ################################################################
scoreboard objectives add lottery trigger {text: "抽獎"}
scoreboard objectives add lottery_count dummy {text: "抽獎計數"}
#### view setings #######################################################
scoreboard objectives add view_settings trigger {text: "檢視設定"}
#### rescure (have not been implemented) #####################################
#scoreboard objectives add rescure dummy {text: "救援隊友"}
#scoreboard objectives add modify_health dummy {text: "血量"}
#scoreboard objectives add rescure_tick dummy {text: "救援刻"}
#scoreboard objectives add rescure_time dummy {text: "救援秒"}

#scoreboard initialize
scoreboard players set 00000000-0000-0000-0000-000000000001 underclock 0
#### book0 ##########################################################
scoreboard players set #team_num random_team 7
scoreboard players set 00000000-0000-0000-0000-000000000000 team_permission 1
scoreboard players set 00000000-0000-0000-0000-000000000001 team_permission 0
scoreboard players set 00000000-0000-0000-0000-000000000000 spec_permission 0
scoreboard players set 00000000-0000-0000-0000-000000000001 spec_permission 1
scoreboard players set #map_size border 496
#### read map process ###############################################
scoreboard players set #width_chunk border 15
scoreboard players set #x_chunk border 0
scoreboard players set #z_chunk border 0
scoreboard players set #read_map_state border 0
scoreboard players set #corner border 1
scoreboard players set #inv_corner border -1
#### timer ##########################################################
scoreboard players set #start_second timer 10
scoreboard players set 00000000-0000-0000-0000-000000000001 timer_sec 11
scoreboard players set 00000000-0000-0000-0000-000000000001 timer_min -1
#### book1 ##########################################################
scoreboard players set 00000000-0000-0000-0000-000000000002 difficulty 0
scoreboard players set 00000000-0000-0000-0000-000000000003 difficulty 1
scoreboard players set 00000000-0000-0000-0000-000000000004 difficulty 2
scoreboard players set 00000000-0000-0000-0000-000000000005 difficulty 3
scoreboard players set 00000000-0000-0000-0000-000000000001 diff 3
scoreboard players set 00000000-0000-0000-0000-000000000000 slow_fall 0
scoreboard players set 00000000-0000-0000-0000-000000000001 slow_fall 1
scoreboard players set 00000000-0000-0000-0000-000000000000 tab_health 0
scoreboard players set 00000000-0000-0000-0000-000000000001 tab_health 1
scoreboard players set 00000000-0000-0000-0000-000000000000 friend_fire 0
scoreboard players set 00000000-0000-0000-0000-000000000001 friend_fire 1
scoreboard players set 00000000-0000-0000-0000-000000000000 friend_push 0
scoreboard players set 00000000-0000-0000-0000-000000000001 friend_push 1
scoreboard players set 00000000-0000-0000-0000-000000000000 name_health 0
scoreboard players set 00000000-0000-0000-0000-000000000001 name_health 1
scoreboard players set 00000000-0000-0000-0000-000000000000 gold_head 0
scoreboard players set 00000000-0000-0000-0000-000000000001 gold_head 1
scoreboard players set 00000000-0000-0000-0000-000000000006 gh_mode 1
scoreboard players set 00000000-0000-0000-0000-000000000007 gh_mode 0
scoreboard players set 00000000-0000-0000-0000-000000000000 night_vision 1
scoreboard players set 00000000-0000-0000-0000-000000000001 night_vision 0
scoreboard players set 00000000-0000-0000-0000-000000000000 advance_announce 0
scoreboard players set 00000000-0000-0000-0000-000000000001 advance_announce 1
scoreboard players set 00000000-0000-0000-0000-000000000000 allow_diamond 0
scoreboard players set 00000000-0000-0000-0000-000000000001 allow_diamond 1
scoreboard players set 00000000-0000-0000-0000-000000000000 invisible 1
scoreboard players set 00000000-0000-0000-0000-000000000001 invisible 0
#### book2 ##########################################################
scoreboard players set 00000000-0000-0000-0000-000000000001 nether_open 0
scoreboard players set 00000000-0000-0000-0000-000000000000 nether_open 1
scoreboard players set #nether_time nether_open 80
scoreboard players set 00000000-0000-0000-0000-000000000001 betray 0
scoreboard players set @e[tag=assist] betray 1
scoreboard players set 00000000-0000-0000-0000-000000000001 betray_time 50
scoreboard players set 00000000-0000-0000-0000-000000000001 betray_tp 60
scoreboard players set 00000000-0000-0000-0000-000000000001 betray_num 3
scoreboard players set 00000000-0000-0000-0000-000000000001 stew_get 0
scoreboard players set @e[tag=assist] stew_get 1
scoreboard players set 00000000-0000-0000-0000-000000000001 potion_brew 0
scoreboard players set @e[tag=assist] potion_brew 1
#scoreboard players set 00000000-0000-0000-0000-000000000001 potion_regen 0
#scoreboard players set @e[tag=assist] potion_regen 1
#scoreboard players set 00000000-0000-0000-0000-000000000001 potion_reinforce 0
#scoreboard players set @e[tag=assist] potion_reinforce 1
#scoreboard players set 00000000-0000-0000-0000-000000000001 potion_turtle 0
#scoreboard players set @e[tag=assist] potion_turtle 1
scoreboard players set 00000000-0000-0000-0000-000000000001 notch_apple 0
scoreboard players set @e[tag=assist] notch_apple 1
scoreboard players set 00000000-0000-0000-0000-000000000001 cut_clean 0
scoreboard players set @e[tag=assist] cut_clean 1
scoreboard players set 00000000-0000-0000-0000-000000000001 exchange 0
scoreboard players set @e[tag=assist] exchange 1
#### book3 ##########################################################
scoreboard players set 00000000-0000-0000-0000-000000000001 border_on 1
scoreboard players set @e[tag=assist] border_on 0
scoreboard players set @e[tag=m1] border_mode 0
scoreboard players set @e[tag=m2] border_mode 2
scoreboard players set @e[tag=m3] border_mode 1
scoreboard players set #border_start border 70
scoreboard players set 00000000-0000-0000-0000-000000000001 border_move 30
scoreboard players set 00000000-0000-0000-0000-000000000001 border_end 16
scoreboard players set 00000000-0000-0000-0000-000000000001 BR_cool_time 2
scoreboard players set 00000000-0000-0000-0000-000000000001 BR_shrink_time 5
scoreboard players set 00000000-0000-0000-0000-000000000001 day_stop 1
scoreboard players set @e[tag=assist] day_stop 0
scoreboard players set @e[tag=p1] day_mode 1
scoreboard players set @e[tag=p2] day_mode 0
scoreboard players set 00000000-0000-0000-0000-000000000001 day_time 80
scoreboard players set 00000000-0000-0000-0000-000000000001 monster_clean 1
scoreboard players set @e[tag=assist] monster_clean 0
scoreboard players set 00000000-0000-0000-0000-000000000001 monster_time 80 
scoreboard players set 00000000-0000-0000-0000-000000000001 hide_name 1
scoreboard players set @e[tag=assits] hide_name 0
scoreboard players set 00000000-0000-0000-0000-000000000001 hide_time 20
scoreboard players set 00000000-0000-0000-0000-000000000001 glowing 1
scoreboard players set @e[tag=assist] glowing 0
scoreboard players set 00000000-0000-0000-0000-000000000001 glow_time 80
#### book4 ##########################################################
scoreboard players set 00000000-0000-0000-0000-000000000001 weather_fix 1
scoreboard players set @e[tag=assist] weather_fix 0
scoreboard players set @e[tag=w1] weather_mode 1
scoreboard players set @e[tag=w2] weather_mode 0
scoreboard players set @e[tag=w3] weather_mode 2
scoreboard players set 00000000-0000-0000-0000-000000000001 weather_time 80
scoreboard players set 00000000-0000-0000-0000-000000000001 sky_limit 1
scoreboard players set @e[tag=assist] sky_limit 0
scoreboard players set 00000000-0000-0000-0000-000000000001 sky_time 80
scoreboard players set 00000000-0000-0000-0000-000000000001 sky_height 75
scoreboard players set 00000000-0000-0000-0000-000000000001 ground_limit 1
scoreboard players set @e[tag=assist] ground_limit 0
scoreboard players set 00000000-0000-0000-0000-000000000001 ground_time 80
scoreboard players set 00000000-0000-0000-0000-000000000001 ground_height 55
scoreboard players set 00000000-0000-0000-0000-000000000001 room 0
scoreboard players set @e[tag=assist] room 1
scoreboard players set 00000000-0000-0000-0000-000000000001 room_time 100
#### book5 ##########################################################
scoreboard players set 00000000-0000-0000-0000-000000000001 branch_mine 1
scoreboard players set @e[tag=assist] branch_mine 0
scoreboard players set 00000000-0000-0000-0000-000000000001 branch_limit 800
scoreboard players set 00000000-0000-0000-0000-000000000001 branch_position 0
scoreboard players set @e[tag=assist] branch_position 1
scoreboard players set 00000000-0000-0000-0000-000000000001 branch_bomb 0
scoreboard players set @e[tag=assist] branch_bomb 1
scoreboard players set 00000000-0000-0000-0000-000000000001 branch_bomb_num 3
scoreboard players set 00000000-0000-0000-0000-000000000001 rand_silverfish 0
scoreboard players set @e[tag=assist] rand_silverfish 1
scoreboard players set 00000000-0000-0000-0000-000000000001 rand_apple 0
scoreboard players set @e[tag=assist] rand_apple 1
scoreboard players set 00000000-0000-0000-0000-000000000001 saddle 0
scoreboard players set @e[tag=assist] saddle 1
scoreboard players set 00000000-0000-0000-0000-000000000001 fish_bucket 0
scoreboard players set @e[tag=assist] fish_bucket 1
scoreboard players set 00000000-0000-0000-0000-000000000001 nerf_arrow 1
scoreboard players set @e[tag=assist] nerf_arrow 0
#scoreboard players set 00000000-0000-0000-0000-000000000001 auto_crossbow 0
#scoreboard players set @e[tag=assist] auto_crossbow 1
scoreboard players set 00000000-0000-0000-0000-000000000001 nerf_crossbow 1
scoreboard players set @e[tag=assist] nerf_crossbow 0
scoreboard players set 00000000-0000-0000-0000-000000000001 random_chest 0
scoreboard players set @e[tag=assist] random_chest 1
scoreboard players set 00000000-0000-0000-0000-000000000001 chest_num 20
scoreboard players set 00000000-0000-0000-0000-000000000001 fish_rush 0
scoreboard players set @e[tag=assist] fish_rush 1
scoreboard players set 00000000-0000-0000-0000-000000000001 pearl_tear 0
scoreboard players set @e[tag=assist] pearl_tear 1
scoreboard players set 00000000-0000-0000-0000-000000000001 shadow_invisible 0
scoreboard players set @e[tag=assist] shadow_invisible 1
scoreboard players set 00000000-0000-0000-0000-000000000001 warden_spawn 1
scoreboard players set @e[tag=assist] warden_spawn 0
scoreboard players set 00000000-0000-0000-0000-000000000001 init_supply 0
scoreboard players set @e[tag=assist] init_supply 1
scoreboard players set 00000000-0000-0000-0000-000000000001 set_supply 0
#### battleroyale ####################################################
scoreboard players set 00000000-0000-0000-0000-000000000001 BR_move 0
scoreboard players set 00000000-0000-0000-0000-000000000001 BR_stage 0
scoreboard players set 00000000-0000-0000-0000-000000000001 BR_factor 20
#### constant ########################################################
scoreboard players set #-1 constant -1
scoreboard players set #1 constant 1
scoreboard players set #2 constant 2
scoreboard players set #3 constant 3
scoreboard players set #5 constant 5
scoreboard players set #7 constant 7
scoreboard players set #10 constant 10
scoreboard players set #13 constant 13
scoreboard players set #100 constant 100
#### lottery ########################################################
scoreboard players set @e[tag=lottery] lottery_count 0
#### rescure ########################################################
#scoreboard players set 00000000-0000-0000-0000-000000000001 rescure 0
#scoreboard players set @e[tag=assist] rescure 1
#scoreboard players set @a rescure_tick 0
#scoreboard players set @a rescure_time 0

#team creat
team add solo
team add spec
team add red
team add blue
team add green
team add yellow
team add purple
team add gray
team add red_dark
team add blue_dark
team add green_dark
team add gold
team add aqua
team add aqua_dark
team add pink
team add gray_dark
team add betrayer
team add winner

#team color
team modify solo color white
team modify spec color black
team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify purple color dark_purple
team modify gray color gray
team modify red_dark color dark_red
team modify blue_dark color dark_blue
team modify green_dark color dark_green
team modify gold color gold
team modify aqua color aqua
team modify aqua_dark color dark_aqua
team modify pink color light_purple
team modify gray_dark color dark_gray
team modify betrayer color black

#bossbar
bossbar add uhc:read_progress {text: "跑圖進度"}
bossbar set uhc:read_progress color green
bossbar set uhc:read_progress visible false
bossbar add uhc:safe_x {text: "X軸: 安全區內"}
bossbar set uhc:safe_x color green
bossbar set uhc:safe_x value 100
bossbar set uhc:safe_x visible false
bossbar add uhc:danger_x {text: "X軸: 安全區外"}
bossbar set uhc:danger_x color red
bossbar set uhc:danger_x value 100
bossbar set uhc:danger_x visible false
bossbar add uhc:safe_z {text: "Z軸: 安全區內"}
bossbar set uhc:safe_z color green
bossbar set uhc:safe_z value 100
bossbar set uhc:safe_z visible false
bossbar add uhc:danger_z {text: "Z軸: 安全區外"}
bossbar set uhc:danger_z color red
bossbar set uhc:danger_z value 100
bossbar set uhc:danger_z visible false

#info settings
scoreboard objectives setdisplay sidebar information

#next stage: lobby
scoreboard players set 00000000-0000-0000-0000-000000000001 state 1
