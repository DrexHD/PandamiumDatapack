execute store result score <mob_count> variable run execute if entity @e[type=!item,type=!item_frame,type=!painting,type=!armor_stand]
execute if score <mob_count> variable matches ..3000 run gamerule doMobSpawning true
execute unless score <mob_count> variable matches ..3000 run gamerule doMobSpawning false
