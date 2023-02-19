function PathPlay(cur_pth, dir, waittime, nxt_state,spr_start){
	currentpath = cur_pth; 
	if walking == false 
	{
		path_start(currentpath,dir,path_action_stop,true);
		sprite_index = spr_start;
		walking = true;
	}
	time = waittime;
	next = nxt_state;
	






}