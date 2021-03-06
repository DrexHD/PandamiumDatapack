# EVENT: user does /trigger tpa
# RESPONSE: gives a list of player ids.

execute if score @s tpa matches 1 run function pandamium:tpa/print_menu

execute if score @s tpa matches 2.. if score @s tpa = @s id run tellraw @s [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," You cannot send a TPA request to yourself."]
execute if score @s tpa matches 2.. unless score @s tpa = @s id run function pandamium:tpa/check_cooldown

scoreboard players reset @s tpa
scoreboard players enable @s tpa
