if (alarm[1] < 0) {
	hp -= 1;
	image_blend = c_red;
	kb_x = sign(x - other.x);
	kb_y = sign(y - other.y);
	alarm[1] = 20;
}