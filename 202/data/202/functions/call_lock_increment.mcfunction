# Add Tags To Missile And Target
tag @s add missile_ptr
tag @e[tag=target_lock,limit=1,sort=nearest] add target_ptr

# Increment If Target Lock
execute as @e[tag=missile_ptr] at @s anchored eyes facing entity @e[tag=target_ptr,limit=1] eyes positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^4 ~ ~

# Increment If No Targets In Range
execute as @e[tag=missile_ptr] at @s unless entity @e[tag=target_ptr] run tp @s ^ ^ ^2.2

# Remove Pointers
tag @e[tag=target_lock] remove target_ptr
tag @s remove missile_ptr
