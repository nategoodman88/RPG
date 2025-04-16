var collision_objects = [tree_obj, rock_obj, water_obj, enemy_obj, player_obj, enemy_obj_2];
var target_x = 0; 
var target_y = 0;

// These all make the enemy never stop moving
if (place_meeting(x, y, collision_objects)) {
	direction = (direction + 180) % 360;
}

if (x == 0 || x == room_width) {
    direction = (direction + 180) % 360;  
}

if (y == 0 || y == room_height) {
    direction = (direction + 180) % 360;  
}

if (alarm[1] >= 0) {
	target_x = x + kb_x;
	target_y = y + kb_y;
}

// Clamp the enemy inside the room
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);