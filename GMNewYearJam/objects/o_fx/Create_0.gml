part_sys = part_system_create();
part_love = part_type_create();

//Props
part_type_sprite(part_love,s_heart,false,false,false);
part_type_life(part_love,60,90);
part_type_direction(part_love,45,145,0,0);
part_type_speed(part_love,1,2,0,0);
