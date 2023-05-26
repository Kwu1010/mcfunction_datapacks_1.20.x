# Set Controller Pointer
tag @s add controller_ptr

# Set Controller ID As Local Variable
scoreboard players operation local_var entity_id = @s entity_id

# Teleport Plane Components To Controller
execute as @e[tag=plane,tag=!seat,tag=!controller] if score @s entity_id = local_var entity_id run tp @s @e[tag=controller_ptr,limit=1]

# Free Pointers
tag @s remove controller_ptr