# Pointers
tag @s add initializer

# Set Caller Lifetime As Local Variable
scoreboard players operation local_var lifetime = @s lifetime

# Initialize Exterior Model
execute as @e[tag=planetemp,tag=model] at @s run item replace entity @s armor.head with structure_void{CustomModelData:5}
execute as @e[tag=planetemp,tag=model,scores={change_counter=1..1}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:6}
execute as @e[tag=planetemp,tag=model,scores={change_counter=2..2}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:7}
execute as @e[tag=planetemp,tag=model,scores={change_counter=3..3}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:8}
execute as @e[tag=planetemp,tag=model,scores={change_counter=4..4}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:9}
execute as @e[tag=planetemp,tag=model,scores={change_counter=5..5}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:10}
execute as @e[tag=planetemp,tag=model,scores={change_counter=6..6}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:11}
execute as @e[tag=planetemp,tag=tail,scores={change_counter=6..6}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:20}
execute as @e[tag=planetemp,tag=model,scores={change_counter=9..9}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:14}
execute as @e[tag=planetemp,tag=model,scores={change_counter=10..10}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:17}
execute as @e[tag=planetemp,tag=model,scores={change_counter=11..11}] at @s run item replace entity @s armor.head with structure_void{CustomModelData:16}

# Initialize Propeller Model
execute as @e[tag=planetemp,tag=propeller] at @s if score @s change_counter < propeller_plane change_counter run item replace entity @s armor.head with structure_void{CustomModelData:1}

# Initialize New Component Data
execute as @e[tag=planetemp] run scoreboard players operation @s entity_id = @e[tag=initializer,limit=1] entity_id
execute as @e[tag=planetemp] run scoreboard players operation @s lifetime = local_var lifetime
execute as @e[tag=planetemp] run scoreboard players set @s vehicle_speed 0
execute as @e[tag=planetemp] run data merge entity @s {Pose:{Head:[0f,0.1f,0f]}}
execute as @e[tag=planetemp] run tag @s add plane
execute as @e[tag=planetemp] run tag @s remove planetemp

# Free Pointers
tag @s remove initializer