///src_slowmo(boolean, slow_mo)

boolean = argument0; // argument0 is first param - number 1
slow_mo = argument1;

if(boolean){
	show_debug_message("slow down");
	obj_boss.speed = obj_boss.speed/slow_mo; 
	obj_boss.movement_speed = obj_boss.movement_speed/slow_mo; 
	
	obj_player.speed = obj_player.speed/slow_mo; 
} else {
	obj_boss.speed = obj_boss.speed*slow_mo; 
	obj_boss.movement_speed = obj_boss.movement_speed*slow_mo; 
		
	obj_player.speed = obj_player.speed*slow_mo; 
}