draw_set_alpha(alpha);
draw_set_color(c_red);
draw_text(x, y, "-" + string(damage));
draw_set_alpha(1); // Reset alpha
draw_set_color(c_white); // Reset color
