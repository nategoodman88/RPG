if (is_showing_dialogue) {
    var w = display_get_gui_width();
    var h = display_get_gui_height();
    
    var box_height = 140;
    var box_x = 0;
    var box_y = h - box_height;

    // Draw background box
    draw_set_color(c_black);
    draw_rectangle(box_x, box_y, w, h, false);

    // Draw text
    draw_set_color(c_white);
    draw_text(box_x + 20, box_y + 20, dialogue_speaker + ": " + dialogue_lines[current_line]);
}



