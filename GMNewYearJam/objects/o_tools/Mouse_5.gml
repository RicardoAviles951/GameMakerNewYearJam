o_toolbelt.selected = false;
if audio_is_playing(snd_heartbeat) audio_stop_sound(snd_heartbeat);
audio_play_sound(snd_deselect,1,false);
o_sidebar.upgrade_ready = false;
o_sidebar.current_tool = noone;

//Re-enable side bar here 
instance_destroy()