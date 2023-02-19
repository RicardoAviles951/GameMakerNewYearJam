function ConfirmUpgrade(){
				//Subtract cost from money
				global.money -= upgrade_cost;
				if !audio_is_playing(snd_upgrade)
				{
					audio_play_sound(snd_upgrade,1,false);
				}
				//Scale bounce for effect
				TweenFire(id,EaseInOutQuint,TWEEN_MODE_BOUNCE,true,0,.25,"popscale",2,3);
				//draw particles on gui layer
				if o_fx.reg_draw 
				{
					o_fx.gui_draw = true;
					o_fx.reg_draw = false;
				}
				else
				{
					o_fx.gui_draw = true;
				}
				//Creates particles
				part_particles_create(o_fx.part_sys,startX + 48,startY + cellsize*4,o_fx.part_coins,10);
}