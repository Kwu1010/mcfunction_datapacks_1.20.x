scoreboard objectives add recipe-plane trigger
scoreboard players enable @a recipe-plane

tellraw @a[scores={recipe-plane=1..}] {"text":"[Propeller Plane Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-plane=1..}] {"text":"You can only have 1 vehicle spawned at a time.","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"Top Speed: 40 BPS","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"Open plane inventory and click saddle to despawn.","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"Detonates on destruction.","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-plane=1..}] [{"text":"Iron Block","color":"white"},{"text":"      | ","color":"gold"},{"text":"Tinted Glass","color":"purple"},{"text":"      | ","color":"gold"},{"text":"Iron Block","color":"white"}]
tellraw @a[scores={recipe-plane=1..}] [{"text":"Copper Ingot","color":"gold"},{"text":"  | ","color":"gold"},{"text":"Saddle","color":"gold"},{"text":"             | ","color":"gold"},{"text":"Copper Ingot","color":"gold"}]
tellraw @a[scores={recipe-plane=1..}] [{"text":"Coal Block","color":"gray"},{"text":"      | ","color":"gold"},{"text":"Redstone Block","color":"gold"},{"text":"  | ","color":"gold"},{"text":"Coal Block","color":"gray"}]

scoreboard players set @a recipe-plane 0