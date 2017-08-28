///create_corpse(x,y)
var xx
var yy
xx = argument0
yy = argument1

head = instance_create(xx,yy-2,obj_prop_part);
head.sprite_index = spr_corpse_parts
head.image_random = false
head.image_index = 1
head.angle = 0

body = instance_create(xx,yy+2,obj_prop_part);
body.sprite_index = spr_corpse_parts
body.image_random = false
body.image_index = 0
body.angle = 0

repeat irandom_range(3,5) {
bones = instance_create(xx+irandom_range(3,-3),yy+irandom_range(3,-3),obj_prop_part);
bones.sprite_index = spr_bones 
}

repeat irandom_range(2,4) {
blood = instance_create(xx+irandom_range(3,-3),yy+irandom_range(3,-3),obj_liquid_ball);
blood.image_blend = c_red 
}

