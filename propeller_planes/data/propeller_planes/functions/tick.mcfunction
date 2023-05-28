# Used To Store Spawn Order Of Vehicles
scoreboard players add server_time lifetime 1

# Update Pilot Tag
execute as @a[tag=pilot] unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["plane"]}}}] run tag @s remove pilot
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["plane"]}}}] add pilot

# Grant Invis To Pilots
execute as @a[tag=pilot] if score @s vehicle_speed >= flight_threshold vehicle_speed run effect give @s invisibility 1 255 true
execute as @a[tag=pilot] if score @s change_counter > avia change_counter run effect give @s invisibility 1 255 true

# Seats Are Invisible
effect give @e[tag=plane,tag=seat] invisibility 1 255 true
effect give @e[tag=plane,tag=seat] water_breathing 1 255 true