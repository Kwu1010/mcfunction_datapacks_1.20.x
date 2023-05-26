# Throttle & Copy Player Speed To Plane
scoreboard players set @a[tag=!pilot,tag=!driver] vehicle_speed 0
scoreboard players remove @a[tag=pilot,nbt={SelectedItemSlot:0},scores={vehicle_speed=1..}] vehicle_speed 1
scoreboard players add @a[tag=pilot,nbt={SelectedItemSlot:2},scores={vehicle_speed=..299}] vehicle_speed 1

# Decrease Plane Speed Unless There Is A Pilot
execute as @e[tag=plane,scores={vehicle_speed=1..}] at @s unless entity @a[tag=pilot,distance=..4] run scoreboard players remove @s vehicle_speed 1

# Movement
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=5..9}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.001
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=10..14}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.005
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=15..19}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.01
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=20..24}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.025
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=25..29}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.05
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=30..34}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.01
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=35..39}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.025
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=40..44}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.05
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=45..49}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.1
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=50..59}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.2
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=60..69}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.3
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=70..79}] at @s if block ^ ^1 ^1 #propeller_planes:non_solid run tp @s ^ ^ ^.4
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=80..89}] at @s run tp @s ^ ^ ^.5
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=90..99}] at @s run tp @s ^ ^ ^.6
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=100..109}] at @s run tp @s ^ ^ ^.7
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=110..119}] at @s run tp @s ^ ^ ^.8
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=120..129}] at @s run tp @s ^ ^ ^.9
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=130..149}] at @s run tp @s ^ ^ ^1
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=150..169}] at @s run tp @s ^ ^ ^1.1
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=170..199}] at @s run tp @s ^ ^ ^1.2
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=200..229}] at @s run tp @s ^ ^ ^1.4
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=230..269}] at @s run tp @s ^ ^ ^1.6
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=270..299}] at @s run tp @s ^ ^ ^1.8
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=300..}] at @s run tp @s ^ ^ ^2

# Gravity
execute as @e[tag=plane,tag=controller,tag=!hover] at @s if score @s vehicle_speed < flight_threshold vehicle_speed if block ~ ~-.1 ~ #propeller_planes:non_solid run tp @s ~ ~-.1 ~
execute as @e[tag=plane,tag=controller,tag=!hover] at @s if score @s vehicle_speed < stall_threshold vehicle_speed if block ~ ~-.1 ~ #propeller_planes:non_solid run tp @s ~ ~-.1 ~

# Ground Clipping
execute as @e[tag=plane,tag=controller] at @s if score @s vehicle_speed < flight_threshold vehicle_speed unless block ~ ~ ~ #propeller_planes:non_solid run tp @s ~ ~.25 ~