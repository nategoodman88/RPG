var key = "";
var collision_objects = [tree_obj, rock_obj, water_obj];
var direction_facing = image_xscale; // Start with current facing direction
var dialogue = instance_exists(dialogue_obj) ? instance_find(dialogue_obj, 0) : noone; // See if dialogue exists or not
var target_x = 0;
var target_y = 0;

// Only allow player input if dialogue isn't showing
if (dialogue == noone || !dialogue.is_showing_dialogue) {
	
	show_debug_message("Player health: " + string(hp));


	// WASD movement
	if (keyboard_check(ord("W"))) key = "W";
	else if (keyboard_check(ord("A"))) key = "A";
	else if (keyboard_check(ord("S"))) key = "S";
	else if (keyboard_check(ord("D"))) key = "D";
	
	// Attack
	if (keyboard_check_pressed(vk_enter)) {
	    var attack = instance_create_depth(x, y, depth, attack_obj); 
	    attack.image_xscale = -direction_facing; // Use opposite of where facing
	}

	// Collison check and sprite mirroring
	switch (key) {
	    case "W":
	        if (!place_meeting(x, y - 2, collision_objects)) {
	            y -= 4;
	        }
	        break;
	    case "A":
	        if (!place_meeting(x - 2, y, collision_objects)) {
	            x -= 4;
	        }
	        image_xscale = 3; // Keep sprite scale consistent
	        direction_facing = 3; // Face left
	        break;
	    case "S":
	        if (!place_meeting(x, y + 2, collision_objects)) {
	            y += 4;
	        }
	        break;
	    case "D":
	        if (!place_meeting(x + 2, y, collision_objects)) {
	            x += 4;
	        }
	        image_xscale = -3; // Keep sprite scale consistent
	        direction_facing = -3; // Face right
	        break;
	}

	if (alarm[1] >= 0) {
	target_x = x + kb_x;
	target_y = y + kb_y;
	}

	// Clamp player inside the room
	x = clamp(x, 0, room_width);
	y = clamp(y, 0, room_height);
}