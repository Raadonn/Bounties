# Detect our armorstands without tag
execute as @e[type=minecraft:armor_stand,nbt={data:{quest:{type:"quest_post"}}}] run tag @s add quest_post
#If questpost is placed, replace and spawn it
function quest:spawn_quest_post
#If questpost is destroyed (barrel), it removes all blocks used for it
execute as @e[type=block_display,tag=withBarrel] at @s unless block ~ ~1 ~ minecraft:barrel unless block ~ ~-1 ~ minecraft:barrel run kill @e[distance=..0.5,limit=10]
