# Init Spawn Egg
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run scoreboard players operation @s entity_id = @p[scores={placed_spawn_egg=1..}] entity_id
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run scoreboard players operation @s lifetime = server_time lifetime

# Fail Spawn If Nearby Vehicle
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s if entity @e[tag=seat,distance=..7] run tag @e[type=endermite,name="Plane Spawn Egg"] add proximity
execute as @e[type=endermite,name="Plane Spawn Egg",tag=proximity] at @s run function propeller_planes:call_spawn_egg
execute as @e[type=endermite,name="Plane Spawn Egg",tag=proximity] at @s run tellraw @a[scores={placed_spawn_egg=1..},tag=!mute_notifications,distance=..6] {"text":"[Server] Unable to spawn a plane near another vehicle.","color":"yellow"}
execute as @e[type=endermite,name="Plane Spawn Egg",tag=proximity] at @s run kill @s

# Spawn Plane Components
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run summon block_display ~ ~ ~ {CustomName:"\"Plane\"",Tags:["planetemp","controller"],Passengers:[{id:horse,CustomName:"\"Plane\"",Tags:["planetemp","seat"],NoGravity:1,NoAI:1,Silent:1,Tame:1,SaddleItem:{id:saddle,Count:1,tag:{display:{Name:"\"Click To Despawn\""}}}}]}
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run function propeller_planes:call_new_components

# Set Exterior Data
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s store result score @e[tag=planetemp] change_counter run scoreboard players get @a[distance=..6,limit=1,scores={placed_spawn_egg=1..}] change_counter

# Initialize Components
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run function propeller_planes:call_init_components

# End Spawn Function
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run scoreboard players set @a placed_spawn_egg 0
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run kill @s