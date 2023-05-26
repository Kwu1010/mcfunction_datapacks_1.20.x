# Add Tag To Pilot
tag @s add rotation_copy_target

# Store Pilot ID As Local Variable
scoreboard players operation local_var entity_id = @s entity_id

# Copy Pilot Rotation To Plane Components If Threshold Met
execute as @e[tag=plane,tag=!seat,tag=!controller,distance=..4] at @s if score @s entity_id = local_var entity_id if entity @a[tag=rotation_copy_target,limit=1,sort=nearest,scores={vehicle_speed=80..,rotation_difference=4..},distance=..4] run data modify entity @s Pose.Head[2] set value 15f
execute as @e[tag=plane,tag=!seat,tag=!controller,distance=..4] at @s if score @s entity_id = local_var entity_id if entity @a[tag=rotation_copy_target,limit=1,sort=nearest,scores={vehicle_speed=80..,rotation_difference=..-4},distance=..4] run data modify entity @s Pose.Head[2] set value -15f
execute as @e[tag=plane,tag=!seat,tag=!controller,distance=..4] at @s if score @s entity_id = local_var entity_id if entity @a[tag=rotation_copy_target,limit=1,sort=nearest,scores={vehicle_speed=80..,rotation_difference=-3..3},distance=..4] run data modify entity @s Pose.Head[2] set value 0f
execute as @e[tag=plane,tag=!seat,tag=!controller,distance=..4] at @s if score @s entity_id = local_var entity_id if entity @a[tag=rotation_copy_target,limit=1,sort=nearest,scores={vehicle_speed=..79},distance=..4] run data modify entity @s Pose.Head[2] set value 0f
execute as @e[tag=plane,tag=propeller,distance=..4] at @s if score @s entity_id = local_var entity_id if entity @a[tag=rotation_copy_target,limit=1,sort=nearest,scores={vehicle_speed=80..,rotation_difference=4..},distance=..4] run tp @s ^0.25 ^ ^
execute as @e[tag=plane,tag=propeller,distance=..4] at @s if score @s entity_id = local_var entity_id if entity @a[tag=rotation_copy_target,limit=1,sort=nearest,scores={vehicle_speed=80..,rotation_difference=..-4},distance=..4] run tp @s ^-0.25 ^ ^

# Clear Tag From Pilot
tag @s remove rotation_copy_target