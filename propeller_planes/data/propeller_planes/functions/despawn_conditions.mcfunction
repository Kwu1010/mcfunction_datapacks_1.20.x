# Spawn Despawner On Click To Despawn
execute as @e[tag=plane,tag=seat] at @s unless entity @s[nbt={SaddleItem:{tag:{display:{Name:"\"Click To Despawn\""}}}}] run tag @s add despawn

# Despawn Oldest Duplicate Vehicle If More Than 1 Exists
execute as @e[tag=plane,tag=seat] at @s run function propeller_planes:call_despawn_oldest

# If Plane Impacts Wall At High Speeds, Detonate
execute as @e[tag=plane,tag=controller] at @s if score @s vehicle_speed > flight_threshold vehicle_speed unless block ~ ~1 ~ #propeller_planes:non_solid run tag @s add detonate

# If Plane Detects Player In Radius But No Seat, Detonate
execute as @e[tag=plane,tag=controller] at @s if entity @a[distance=..100] unless entity @e[tag=plane,tag=seat,distance=..10] run tag @s add detonate

# If Plane Detects Another In Radius, Detonate
execute as @e[tag=plane,tag=seat] at @s if entity @e[tag=plane,tag=seat,distance=2..3] run tag @s add detonate

# Kill Plane Parts If No Seat With Corrosponding Plane ID Is Nearby
execute as @e[tag=plane,tag=!seat,tag=!controller] at @s if entity @a[distance=..100] unless entity @e[tag=plane,tag=seat,distance=..10] run kill @s