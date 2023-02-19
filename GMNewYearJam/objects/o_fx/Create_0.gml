part_sys = part_system_create();
part_system_automatic_draw(part_sys, false);
reg_draw = false;
gui_draw = false;
part_love = part_type_create();
part_coins = part_type_create();
part_water = part_type_create();

//Props
part_type_sprite(part_love,s_heart,false,false,false);
part_type_life(part_love,60,90);
part_type_direction(part_love,45,145,0,0);
part_type_speed(part_love,1,2,0,0);

//Coins
part_type_sprite(part_coins,s_purchase,true,true,false);
part_type_scale(part_coins,2,2);
part_type_life(part_coins,60,90);
part_type_direction(part_coins,30,160,0,0);
part_type_speed(part_coins,1,3,0,0);
part_type_gravity(part_coins,.1,270);

//Water 
part_type_sprite(part_water,s_waterdrop,false,false,false);
part_type_scale(part_water,.25,.25);
part_type_life(part_water,30,60);
part_type_direction(part_water,180,290,0,0);
part_type_speed(part_water,1,3,0,0);
part_type_gravity(part_water,.1,270);