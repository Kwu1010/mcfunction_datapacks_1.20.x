# Copy Exterior Data To Player
execute as @a[scores={change_counter=4..},name=!Totally_Normal,name=!TwoCanOfTuna,tag=!cc] at @s if score setting era_lock < lock_one era_lock run scoreboard players set @s change_counter 0
execute as @a[scores={change_counter=6..},name=!Totally_Normal,name=!TwoCanOfTuna,tag=!cc] at @s if score setting era_lock < lock_two era_lock run scoreboard players set @s change_counter 0
execute as @a[scores={change_counter=7..},name=!Totally_Normal,name=!TwoCanOfTuna,tag=!cc] at @s run scoreboard players set @s change_counter 0
execute as @a[scores={change_counter=10..},name=!Totally_Normal,name=!TwoCanOfTuna,tag=cc] at @s run scoreboard players set @s change_counter 0
execute as @a[tag=cc,scores={change_counter=4..8},name=!Totally_Normal,name=!TwoCanOfTuna] at @s if score setting era_lock < lock_one era_lock run scoreboard players set @s change_counter 9
execute as @a[tag=cc,scores={change_counter=6..8},name=!Totally_Normal,name=!TwoCanOfTuna] at @s if score setting era_lock < lock_two era_lock run scoreboard players set @s change_counter 9
execute as @a[scores={change_counter=7..8}] at @s run scoreboard players set @s change_counter 9
execute as @e[tag=plane,tag=!seat] at @s store result score @s change_counter run scoreboard players get @e[tag=plane,tag=seat,distance=..4,limit=1] change_counter

# Register Exterior Change Request
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b}}] at @s run tag @s add exterior_change
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"leather_horse_armor",Count:1}}
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b}}] at @s run item replace entity @s horse.armor with air

# Clear Armor
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"iron_horse_armor",Count:1}}
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b}}] at @s run item replace entity @s horse.armor with air
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:golden_horse_armor",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"golden_horse_armor",Count:1}}
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:golden_horse_armor",Count:1b}}] at @s run item replace entity @s horse.armor with air
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"diamond_horse_armor",Count:1}}
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b}}] at @s run item replace entity @s horse.armor with air

# Exterior Type Rotation
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s run scoreboard players add @s change_counter 1
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s as @p[distance=..4] at @s store result score @s change_counter run scoreboard players get @e[tag=plane,tag=seat,distance=..4,limit=1] change_counter
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=4..}] at @s if score setting era_lock < lock_one era_lock unless entity @a[tag=cc,distance=..4] unless entity @a[name=Totally_Normal,distance=..4] unless entity @a[name=TwoCanOfTuna,distance=..4] run scoreboard players set @s change_counter 0
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=6..}] at @s if score setting era_lock < lock_two era_lock unless entity @a[tag=cc,distance=..4] unless entity @a[name=Totally_Normal,distance=..4] unless entity @a[name=TwoCanOfTuna,distance=..4] run scoreboard players set @s change_counter 0
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=7..}] at @s unless entity @a[tag=cc,distance=..4] unless entity @a[name=Totally_Normal,distance=..4] unless entity @a[name=TwoCanOfTuna,distance=..4] run scoreboard players set @s change_counter 0
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=4..9}] at @s if score setting era_lock < lock_one era_lock if entity @a[tag=cc,distance=..4,name=!Totally_Normal,name=!TwoCanOfTuna] run scoreboard players set @s change_counter 9
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=6..9}] at @s if score setting era_lock < lock_two era_lock if entity @a[tag=cc,distance=..4,name=!Totally_Normal,name=!TwoCanOfTuna] run scoreboard players set @s change_counter 9
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=7..9}] at @s if entity @a[tag=cc,distance=..4,name=!Totally_Normal,name=!TwoCanOfTuna] run scoreboard players set @s change_counter 9
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=10..}] at @s if entity @a[tag=cc,distance=..4,name=!Totally_Normal,name=!TwoCanOfTuna] run scoreboard players set @s change_counter 0
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=7..8}] at @s run scoreboard players set @s change_counter 9
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=12..}] at @s run scoreboard players set @s change_counter 0

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=0..0}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:5}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=0..0}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=0..0}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:1}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=0..0}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=1..1}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:6}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=1..1}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=1..1}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:1}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=1..1}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=2..2}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:7}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=2..2}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=2..2}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:1}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=2..2}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=3..3}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:8}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=3..3}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=3..3}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:1}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=3..3}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=4..4}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:9}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=4..4}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=4..4}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:1}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=4..4}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=5..5}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:10}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=5..5}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=5..5}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:1}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=5..5}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=6..6}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:11}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=6..6}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:20}
execute as @e[tag=plane,tag=seat,scores={change_counter=6..6}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=6..6}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=9..9}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:14}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=9..9}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,scores={change_counter=9..9}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=9..9}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=10..10}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:15}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=10..10}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=10..10}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=10..10}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=11..11}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run item replace entity @s armor.head with structure_void{CustomModelData:16}
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=11..11}] at @s as @e[tag=plane,tag=tail,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=11..11}] at @s as @e[tag=plane,tag=propeller,distance=..4] at @s run item replace entity @s armor.head with air
execute as @e[tag=plane,tag=seat,tag=exterior_change,scores={change_counter=11..11}] at @s as @e[tag=plane,tag=model,distance=..4] at @s run data modify entity @s Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s run tag @s remove exterior_change