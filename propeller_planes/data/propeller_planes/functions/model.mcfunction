# Store Player Rotation Data
execute as @a at @s store result score @s current_rotation run data get entity @s Rotation[0]
execute as @a at @s run scoreboard players operation @s rotation_difference = @s last_rotation
execute as @a at @s run scoreboard players operation @s rotation_difference -= @s current_rotation
execute as @a at @s store result score @s last_rotation run data get entity @s Rotation[0]

# Copy Pilot Data To Controller
execute as @a[tag=pilot] at @s run function propeller_planes:call_copy_pilot_data

# Set Defaults
execute as @e[tag=plane,tag=controller] if score @s vehicle_speed < flight_threshold vehicle_speed run data modify entity @s Rotation[1] set value 0f

# Teleport All Components To Controller
execute as @e[tag=plane,tag=controller] at @s run function propeller_planes:call_copy_rotation

# Copy Component Rotation To Pose
execute as @e[tag=plane,tag=!seat,tag=!controller] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute as @e[tag=plane,tag=!seat,tag=!controller] if score @s vehicle_speed < flight_threshold vehicle_speed if score @s change_counter <= avia change_counter run data modify entity @s Pose.Head[0] set value -3f
execute as @e[tag=plane,tag=!seat,tag=!controller] if score @s vehicle_speed < flight_threshold vehicle_speed if score @s change_counter = zero change_counter run data modify entity @s Pose.Head[0] set value -7.5f
execute as @e[tag=plane,tag=!seat,tag=!controller] if score @s vehicle_speed < flight_threshold vehicle_speed if score @s change_counter = corsair change_counter run data modify entity @s Pose.Head[0] set value -7.5f
execute as @e[tag=plane,tag=!seat,tag=!controller] if score @s vehicle_speed < flight_threshold vehicle_speed if score @s change_counter = tako change_counter run data modify entity @s Pose.Head[0] set value -7.5f
execute as @e[tag=plane,tag=!seat,tag=!controller] if score @s vehicle_speed < flight_threshold vehicle_speed if score @s change_counter > nonmisc change_counter run data modify entity @s Pose.Head[0] set value 0f

# Plane Tilt
execute as @a[tag=pilot] at @s run function propeller_planes:call_plane_tilt

# Unfold Vehicle Model
execute as @e[tag=plane,tag=model] at @s if score @s change_counter <= biplane change_counter run tp @s ^ ^-.8 ^-.4
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter <= biplane change_counter run tp @s ^ ^-0.2 ^3.45
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = avia change_counter run tp @s ^ ^-1.25 ^-.4
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter = avia change_counter run tp @s ^ ^-0.3 ^3.4
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = zero change_counter run tp @s ^ ^-.5 ^-.4
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter = zero change_counter run tp @s ^ ^.08 ^2.7
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter = zero change_counter if score @s vehicle_speed >= flight_threshold vehicle_speed run tp @s ^ ^-.4 ^
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = corsair change_counter run tp @s ^ ^-.5 ^-.4
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter = corsair change_counter run tp @s ^ ^.08 ^2.7
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter = corsair change_counter if score @s vehicle_speed >= flight_threshold vehicle_speed run tp @s ^ ^-.4 ^
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = thirtyfive change_counter run tp @s ^ ^ ^2.115
execute as @e[tag=plane,tag=tail] at @s if score @s change_counter = thirtyfive change_counter run tp @s ^ ^ ^-2.115
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = tako change_counter run tp @s ^ ^-.5 ^-.4
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = ups change_counter run tp @s ^ ^ ^-1.5
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = tardis change_counter run tp @s ^ ^-1 ^

# Zero Model Swap
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = zero change_counter if score @s vehicle_speed >= flight_threshold vehicle_speed run item replace entity @s armor.head with structure_void{CustomModelData:18}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = zero change_counter if score @s vehicle_speed < flight_threshold vehicle_speed run item replace entity @s armor.head with structure_void{CustomModelData:9}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=power_down,distance=..4] if score @s change_counter = zero change_counter run item replace entity @s armor.head with structure_void{CustomModelData:9}

# Corsair Model Swap
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = corsair change_counter if score @s vehicle_speed >= flight_threshold vehicle_speed run item replace entity @s armor.head with structure_void{CustomModelData:19}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = corsair change_counter if score @s vehicle_speed < flight_threshold vehicle_speed run item replace entity @s armor.head with structure_void{CustomModelData:10}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=power_down,distance=..4] if score @s change_counter = corsair change_counter run item replace entity @s armor.head with structure_void{CustomModelData:10}

# F35 Model Swap
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = thirtyfive change_counter if score @s vehicle_speed >= flight_threshold vehicle_speed run item replace entity @s armor.head with structure_void{CustomModelData:21}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = thirtyfive change_counter if score @s vehicle_speed < flight_threshold vehicle_speed run item replace entity @s armor.head with structure_void{CustomModelData:11}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=power_down,distance=..4] if score @s change_counter = thirtyfive change_counter run item replace entity @s armor.head with structure_void{CustomModelData:11}

# Tako Model Swap
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = tako change_counter if score @s vehicle_speed >= flight_threshold vehicle_speed run item replace entity @s armor.head with structure_void{CustomModelData:22}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = tako change_counter if score @s vehicle_speed < flight_threshold vehicle_speed run item replace entity @s armor.head with structure_void{CustomModelData:14}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=power_down,distance=..4] if score @s change_counter = tako change_counter run item replace entity @s armor.head with structure_void{CustomModelData:14}

# UPS Model Swap
execute as @e[tag=plane,tag=model] at @s if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:15}}]}] if score @s change_counter = ups change_counter if score @s vehicle_speed <= flight_threshold vehicle_speed unless entity @a[tag=pilot,distance=..2] run item replace entity @s armor.head with structure_void{CustomModelData:17}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = ups change_counter if entity @a[tag=pilot,distance=..2] run item replace entity @s armor.head with structure_void{CustomModelData:15}
execute as @e[tag=plane,tag=model] at @s if score @s vehicle_speed > flight_threshold vehicle_speed if score @s change_counter = ups change_counter run particle minecraft:campfire_cosy_smoke ^ ^1.2 ^-2 0.3 0.3 0.3 0 5 force

# Propeller Spin
scoreboard players set loop4limit loop 4
scoreboard players set var1 loop 1
scoreboard players set var2 loop 2
scoreboard players set var3 loop 3
scoreboard players set var4 loop 4
execute if score loop4 loop > loop4limit loop run scoreboard players set loop4 loop 0
scoreboard players add loop4 loop 1
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter < propeller_plane change_counter if score loop4 loop = var1 loop unless block ~ ~2 ~ water run item replace entity @s armor.head with structure_void{CustomModelData:1}
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter < propeller_plane change_counter if score loop4 loop = var2 loop unless block ~ ~2 ~ water run item replace entity @s armor.head with structure_void{CustomModelData:2}
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter < propeller_plane change_counter if score loop4 loop = var3 loop unless block ~ ~2 ~ water run item replace entity @s armor.head with structure_void{CustomModelData:3}
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter < propeller_plane change_counter if score loop4 loop = var4 loop unless block ~ ~2 ~ water run item replace entity @s armor.head with structure_void{CustomModelData:4}

# Tardis Spin
execute as @e[tag=plane,tag=model,nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:16}}]}] at @s if entity @a[tag=pilot,distance=..4] if score loop4 loop = var1 loop unless block ~ ~2 ~ water run data modify entity @s Pose.Head[1] set value 0.1f
execute as @e[tag=plane,tag=model,nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:16}}]}] at @s if entity @a[tag=pilot,distance=..4] if score loop4 loop = var2 loop unless block ~ ~2 ~ water run data modify entity @s Pose.Head[1] set value 45.1f
execute as @e[tag=plane,tag=model,nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:16}}]}] at @s if entity @a[tag=pilot,distance=..4] if score loop4 loop = var3 loop unless block ~ ~2 ~ water run data modify entity @s Pose.Head[1] set value 90.1f
execute as @e[tag=plane,tag=model,nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:16}}]}] at @s if entity @a[tag=pilot,distance=..4] if score loop4 loop = var4 loop unless block ~ ~2 ~ water run data modify entity @s Pose.Head[1] set value 135.1f