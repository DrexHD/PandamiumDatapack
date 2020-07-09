execute at @a if score @s spawnpoint = @p id unless score @p spawnpoint_x = @p spawnpoint_x run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"}," has not set a spawnpoint."]

execute at @a if score @s spawnpoint = @p id if data entity @s SpawnX if score @p spawnpoint_dim matches -1 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s current spawnpoint is at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the Nether."]
execute at @a if score @s spawnpoint = @p id if data entity @s SpawnX if score @p spawnpoint_dim matches 0 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s current spawnpoint is at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the Overworld."]
execute at @a if score @s spawnpoint = @p id if data entity @s SpawnX if score @p spawnpoint_dim matches 1 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s current  spawnpoint is at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the End."]

execute at @a if score @s spawnpoint = @p id unless data entity @s SpawnX if score @p spawnpoint_dim matches -1 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s last spawnpoint was at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the Nether."]
execute at @a if score @s spawnpoint = @p id unless data entity @s SpawnX if score @p spawnpoint_dim matches 0 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s last spawnpoint was at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the Overworld."]
execute at @a if score @s spawnpoint = @p id unless data entity @s SpawnX if score @p spawnpoint_dim matches 1 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s last spawnpoint was at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the End."]

execute if score @s spawnpoint matches -2 run scoreboard players set @s spawnpoint -3
execute at @a if score @s spawnpoint = @p id run scoreboard players set @s spawnpoint -2
execute unless score @s spawnpoint matches -2 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"}, "Could not find a player with that id."]

scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint