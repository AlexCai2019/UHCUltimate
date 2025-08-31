#########################################################
# UHC Project 
# Name    : book_controller.mcfunction 
# Made by : jelly99709
# Path    : /lobby/book/
# Loop    : No. Called in lobby stage.
# func    : Handle all book-setting sub-functions.
#########################################################

#non-used number: 12~15, 30, 100~102, 120~
#nether-used number: 1000~1001, 1005, 1021~1023, 1031~1034

#play sound
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.7

#### first book (book0) ################################################################################################################################

#book = 1 ~ 2, team number
execute if score @s book matches 1..2 run function uhc:lobby/settings/team_num

#book = 3, random-teamed
execute if score @s book matches 3 run function uhc:lobby/settings/random_team

#book = 10, clear team
execute if score @s book matches 4 run team join solo @a[team=!spec]

#book = 4, team permission
execute if score @s book matches 5 run function uhc:lobby/settings/boolean {objective: "team_permission", name: "自由選隊"}

#book = 5, spectator
execute if score @s book matches 6 run function uhc:lobby/settings/boolean {objective: "spec_permission", name: "觀察者模式"}

#book = 27, slow_fall
execute if score @s book matches 7 run function uhc:lobby/settings/boolean {objective: "slow_fall", name: "隨機傳送"}

#book = 6 ~ 7, map size
execute if score @s book matches 8..9 run function uhc:lobby/settings/map_size

#book = 8, pre-read map
execute if score @s book matches 10 unless entity @a[tag=read_map] at @e[type=marker, tag=sub2] run function uhc:lobby/settings/map_gen/map_init

#book = 9, stop pre-read map
execute if score @s book matches 11 if entity @a[tag=read_map] run function uhc:lobby/settings/map_gen/map_stop

#book = 10, reset. This option has been remove.
#execute if score @s book matches 10 run function uhc:reset

#book = 11, game start
execute if score @s book matches 12 run function uhc:lobby/settings/click_start

#### second book (book1) ##########################################################################################################################

#book = 16 ~ 17, difficulty 
execute if score @s book matches 13 run function uhc:lobby/settings/difficulty

#book = 18 ~ 20, friendly fire & friendly push & teammate position 
execute if score @s book matches 14 run function uhc:lobby/settings/boolean {objective: "friend_fire", name: "同隊傷害"}
execute if score @s book matches 15 run function uhc:lobby/settings/boolean {objective: "friend_push", name: "同隊推擠"}

#book = 21 ~ 22, health display
execute if score @s book matches 16 run function uhc:lobby/settings/boolean {objective: "tab_health", name: "tab顯示血量"}
execute if score @s book matches 17 run function uhc:lobby/settings/boolean {objective: "name_health", name: "名條顯示血量"}

#book = 23 ~ 25, gold head
execute if score @s book matches 18 run function uhc:lobby/settings/boolean {objective: "gold_head", name: "金頭顱模式"}
execute if score @s book matches 19 run function uhc:lobby/settings/gold_head

#book = 26, night_vision
execute if score @s book matches 20 run function uhc:lobby/settings/boolean {objective: "night_vision", name: "夜視效果"}

#book = 42, advancement announce
execute if score @s book matches 21 run function uhc:lobby/settings/boolean {objective: "advance_announce", name: "成就通知"}

#book = 28, allow_diamond
execute if score @s book matches 22 run function uhc:lobby/settings/boolean {objective: "allow_diamond", name: "鑽裝合成"}

#book = 29, invisible
execute if score @s book matches 23 run function uhc:lobby/settings/boolean {objective: "invisible", name: "隱形保護"}

#### third book (book2) ##########################################################################################################################

#book = 31 ~ 33, nether
execute if score @s book matches 24 run function uhc:lobby/settings/boolean {objective: "nether_open", name: "開放地獄"}
execute if score @s book matches 25..26 run function uhc:lobby/settings/nether

#book = 106 ~ 112, betrayer
execute if score @s book matches 27 run function uhc:lobby/settings/boolean {objective: "betray", name: "背叛者小隊"}
execute if score @s book matches 28..33 run function uhc:lobby/settings/betray

#book = 35 ~ 40, potion, include notch apple and suspicious stew
execute if score @s book matches 34 run function uhc:lobby/settings/boolean {objective: "potion_brew", name: "釀造藥水"}
execute if score @s book matches 35 run function uhc:lobby/settings/boolean {objective: "stew_get", name: "可疑的燉湯"}
execute if score @s book matches 36 run function uhc:lobby/settings/boolean {objective: "notch_apple", name: "附魔金蘋果"}

#book = 41, cut clean
execute if score @s book matches 37 run function uhc:lobby/settings/boolean {objective: "cut_clean", name: "物品免燒"}

#book = 34, exchange
execute if score @s book matches 38 run function uhc:lobby/settings/boolean {objective: "exchange", name: "礦物交換"}

#### fourth book (book3) ##########################################################################################################################

#book = 43 ~ 51, border settings
execute if score @s book matches 43..51 run function uhc:lobby/settings/border_mode

#book = 66 ~ 67, battle royale time interval
execute if score @s book matches 66..69 run function uhc:lobby/settings/br_interval

#book = 52 ~ 56, time stop
execute if score @s book matches 52..56 run function uhc:lobby/settings/time_stop

#book = 57 ~ 59, moster clean
execute if score @s book matches 57..59 run function uhc:lobby/settings/monster_clean

#book = 60 ~ 62, name hide
execute if score @s book matches 60..62 run function uhc:lobby/settings/hide_name

#book = 63 ~ 65, glowing
execute if score @s book matches 63..65 run function uhc:lobby/settings/glow

#### fifth book (book4) ##########################################################################################################################

#book = 95 ~ 99, weather
execute if score @s book matches 95..99 run function uhc:lobby/settings/weather

#book = 71 ~ 75, limit height
execute if score @s book matches 71..75 run function uhc:lobby/settings/sky_limit

#book = 76 ~ 80, limit under ground
execute if score @s book matches 76..80 run function uhc:lobby/settings/ground_limit

#book = 81 ~ 83, room
execute if score @s book matches 81..83 run function uhc:lobby/settings/room

#book = 89, room check, trigger by clickEvent
execute if score @s book matches 89 run function uhc:lobby/settings/room_check

#### book5 #######################################################################################################################################

#book = 113 ~ 119, branch mine
execute if score @s book matches 113..119 run function uhc:lobby/settings/branch_mine

#book = 85, random silverfish
execute if score @s book matches 85 run function uhc:lobby/settings/rand_silver

#book = 86, random golden apple
execute if score @s book matches 86 run function uhc:lobby/settings/rand_apple

#book = 87, reverse craft of golden equipmentxs
#execute if score @s book matches 87 run function uhc:lobby/settings/golden_craft

#book = 88, custom saddle recipe
execute if score @s book matches 88 run function uhc:lobby/settings/saddle_craft

#book = 90, custom fish bucket recipe
execute if score @s book matches 90 run function uhc:lobby/settings/fish_craft

#book = 104 ~ 105, nerf arrow
execute if score @s book matches 104..105 run function uhc:lobby/settings/nerf_arrow

#book = 103, automatic crossbow
#execute if score @s book matches 103 run function uhc:lobby/settings/auto_crossbow

#book = 103, nerf crossbow
execute if score @s book matches 103 run function uhc:lobby/settings/nerf_crossbow

#book = 92 ~ 94, random chest
execute if score @s book matches 92..94 run function uhc:lobby/settings/random_chest

#book = 91, fishing rush
execute if score @s book matches 91 run function uhc:lobby/settings/fish_rush

#book = 84, pearl tear
execute if score @s book matches 84 run function uhc:lobby/settings/pearl_tear

#book = 70, shadow-invisible
execute if score @s book matches 70 run function uhc:lobby/settings/shadow

#book = 100, no warden
execute if score @s book matches 100 run function uhc:lobby/settings/no_warden

#book = 1031~1034, initial supply
execute if score @s book matches 1031 run function uhc:lobby/settings/init_supply
execute if score @s book matches 1032..1034 run function uhc:lobby/settings/init_supply_set


#### reset ########################################################################################################################################

scoreboard players reset @a book