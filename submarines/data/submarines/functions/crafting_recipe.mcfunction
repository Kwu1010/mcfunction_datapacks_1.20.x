scoreboard objectives add recipe-submarine trigger
scoreboard players enable @a recipe-submarine

tellraw @a[scores={recipe-submarine=1..}] {"text":"[Submarine Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"You can only have 1 vehicle spawned at a time.","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"Top Speed: 10 BPS","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"Break minecart to despawn.","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"Throw TNT minecart to fire torpedo.","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-submarine=1..}] [{"text":"Cyan Dye","color":"white"},{"text":"          | ","color":"gold"},{"text":"Iron Block","color":"purple"},{"text":"    | ","color":"gold"},{"text":"Cyan Dye","color":"white"}]
tellraw @a[scores={recipe-submarine=1..}] [{"text":"Copper Ingot","color":"gold"},{"text":"     | ","color":"gold"},{"text":"Horse Armor","color":"gold"},{"text":" | ","color":"gold"},{"text":"Copper Ingot","color":"gold"}]
tellraw @a[scores={recipe-submarine=1..}] [{"text":"Polished Diorite","color":"gray"},{"text":"  | ","color":"gold"},{"text":"Hopper","color":"gold"},{"text":"        | ","color":"gold"},{"text":"Polished Diorite","color":"gray"}]

scoreboard players set @a recipe-submarine 0