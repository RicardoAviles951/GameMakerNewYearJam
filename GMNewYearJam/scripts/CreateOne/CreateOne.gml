function CreateOne(inst,_x,_y,lyr){
	if !instance_exists(inst){
		var obj = instance_create_layer(_x,_y,lyr,inst);
		return obj
	}
	
}