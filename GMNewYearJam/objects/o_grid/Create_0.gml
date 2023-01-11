c = c_white;
alpha = .1;
pos = 0;
col = 0;
row = 0;
enum states{
	inactive,
	hover,
	selected,
	void
}

grid_width = 20;
grid_height = 10;
gridarray = [0,0];
cell_size = 32;

GroundArray = [];
for (var i = 0; i < grid_width; i++)
{
	for(var k = 0; k < grid_height; k++)
	{
		with(collision_point(x+(i*cell_size),y+(k*cell_size),all,false,true)){
			other.GroundArray[i,k] = id;
			other.pos +=1;
			//show_debug_message("Object " + string(other.pos) +" "+ string(other.GroundArray[i,k])); 
		}
		if collision_point(x+(i*32),y+(k*32),o_wall,false,true)
		{
			//Marks cells that are colliding with walls
			gridarray[i,k] = states.void; 
			//show_debug_message("hit");
		}
		else
		{
			gridarray[i,k] = states.inactive;
			//pos +=1;
			//show_debug_message("Index " + string(pos) + " = " + string(gridarray[i,k]));
		}
	}
}


for (var i = 0; i < grid_width;i++){
	for(var k = 0; k < grid_height;k++)
	{
		var str = object_get_name(GroundArray[i,k].object_index);
		//show_debug_message(str);
		if str = "o_wall"{
			GroundArray[i,k] = 0;
		}
		//show_debug_message(GroundArray[i,k]);
	}
}

	

//show_debug_message(GroundArray);
