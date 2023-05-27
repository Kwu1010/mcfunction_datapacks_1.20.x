# Fire Lance Load Status
title @a[tag=hold_coilgun_loaded] actionbar {"text":"","bold":"true","extra":[{"text":"Loaded | ","color":"dark_purple"},{"text":"Bullet","color":"white"}]}
title @a[tag=hold_coilgun,tag=!hold_coilgun_loaded,tag=!hold_coilgun_he] actionbar {"text":"","bold":"true","extra":[{"text":"Empty | ","color":"red"},{"text":"Press Q To Reload","color":"white"}]}
scoreboard players set divider reload_coilgun 1
execute as @a[tag=hold_coilgun,scores={reload_coilgun=1..}] run scoreboard players operation @s reload_coilgun_status = @s reload_coilgun
execute as @a[tag=hold_coilgun,scores={reload_coilgun=1..}] run scoreboard players operation @s reload_coilgun_status /= divider reload_coilgun
execute as @a[tag=hold_coilgun,scores={reload_coilgun=1..}] run title @s actionbar {"text":"","bold":"true","extra":[{"text":"Reloading | ","color":"red"},{"score":{"name":"@s","objective":"reload_coilgun_status"}},{"text":"%"}]}