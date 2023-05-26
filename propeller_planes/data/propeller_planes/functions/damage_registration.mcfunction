# Arrow Damage
execute as @e[tag=plane,tag=seat] at @s positioned ^ ^1 ^-.5 if entity @e[type=minecraft:arrow,distance=..3] run damage @s 2 minecraft:arrow
execute as @e[tag=plane,tag=seat] at @s positioned ^ ^1 ^-.5 if entity @e[type=minecraft:arrow,distance=..3] run kill @e[type=arrow,distance=..3]

# Spectral Arrow Damage
execute as @e[tag=plane,tag=seat] at @s positioned ^ ^1 ^-.5 if entity @e[type=minecraft:spectral_arrow,distance=..3] run damage @s 4 minecraft:arrow
execute as @e[tag=plane,tag=seat] at @s positioned ^ ^1 ^-.5 if entity @e[type=minecraft:spectral_arrow,distance=..3] run kill @e[type=spectral_arrow,distance=..3]