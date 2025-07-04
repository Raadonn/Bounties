# Detect our armorstands without tag
execute as @e[type=minecraft:armor_stand,nbt={data:{quest:{type:"quest_post"}}}] run tag @s add quest_post
