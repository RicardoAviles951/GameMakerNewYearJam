function PlaySeq(seq,pos,dir){
	//Sets sequence postion to top left corner of camera
	var cam = view_camera[0];
	var camx = camera_get_view_x(cam);
	var camy = camera_get_view_y(cam);
	
	//Creates seq and sets its starting position and direction
	var _seq = layer_sequence_create("seqs",camx,camy,seq);
	layer_sequence_headpos(_seq, pos);
	layer_sequence_headdir(_seq, dir);
}