tellraw @s [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You ",{"text":"accepted","color":"aqua"}," ",[{"selector":"@p"},"'s"]," TPA request."]
tellraw @p [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," ",{"selector":"@s"}," ",{"text":"accepted","color":"aqua"}," your TPA request."]

tp @p @s

scoreboard players reset @s tpa_request
