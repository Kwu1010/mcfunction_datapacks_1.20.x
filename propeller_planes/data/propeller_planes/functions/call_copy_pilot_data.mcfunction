# Set Pilot Pointer
tag @s add pilot_ptr

# Set Pilot ID As Local Variable
scoreboard players operation local_var entity_id = @s entity_id

# Copy Pilot Rotation To Controller
execute as @e[tag=plane,tag=controller,distance=..4] if score @s entity_id = local_var entity_id run data modify entity @s Rotation set from entity @p[tag=pilot_ptr] Rotation

# Copy Pilot Movement Speed To Components
execute as @e[tag=plane,distance=..4] if score @s entity_id = local_var entity_id store result score @s vehicle_speed run scoreboard players get @a[tag=pilot_ptr,limit=1] vehicle_speed

# Free Pointers
tag @s remove pilot_ptr