if place_meeting(x,y,obj_player) and !instance_exists(obj_warp)
	{
	var inst1 = instance_create_depth(0,0,-9999,obj_warp)	
	inst1.target_x =target_x;
	inst1.target_y =target_y;
	inst1.target_rm =target_rm;
	inst1.target_face =target_face;
	}
	