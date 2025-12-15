if (!moving) {
    if (keyboard_check(ord("W"))) { dir_x = 0; dir_y = -1; moving = true; }
    if (keyboard_check(ord("S"))) { dir_x = 0; dir_y =  1; moving = true; }
    if (keyboard_check(ord("A"))) { dir_x = -1; dir_y = 0; moving = true; }
    if (keyboard_check(ord("D"))) { dir_x =  1; dir_y = 0; moving = true; }
}

if (moving) {
    var hit = move_and_collide(dir_x * move_speed, dir_y * move_speed, tilemap);

if (array_length(hit) > 0) {
    moving = false;
    dir_x = 0;
    dir_y = 0;
}
}




