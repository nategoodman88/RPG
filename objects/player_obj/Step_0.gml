var key = "";
var collision_objects = [tree_obj, rock_obj, water_obj, enemy_obj];

// Set movement directions based on key press
if (keyboard_check(ord("W"))) key = "W";
else if (keyboard_check(ord("A"))) key = "A";
else if (keyboard_check(ord("S"))) key = "S";
else if (keyboard_check(ord("D"))) key = "D";

switch (key) {
    case "W":
        // Check if the player can move up (no collision)
        if (!place_meeting(x, y - 2, collision_objects)) {
            y -= 4; // Slow vertical movement (move up)
        }
        break;

    case "A":
        // Check if the player can move left (no collision)
        if (!place_meeting(x - 2, y, collision_objects)) {
            x -= 4; // Slow horizontal movement (move left)
        }
        break;

    case "S":
        // Check if the player can move down (no collision)
        if (!place_meeting(x, y + 2, collision_objects)) {
            y += 4; // Slow vertical movement (move down)
        }
        break;

    case "D":
        // Check if the player can move right (no collision)
        if (!place_meeting(x + 2, y, collision_objects)) {
            x += 4; // Slow horizontal movement (move right)
        }
        break;

    default:
        break;
}

// Clamp the player's position to stay within the room
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);
