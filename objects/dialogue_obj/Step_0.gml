if (keyboard_check_pressed(vk_space)) {
    current_line++;

    if (current_line >= array_length(dialogue_lines)) {
        is_showing_dialogue = false;
        instance_destroy(); // Remove the controller once dialogue is done
    }
}
