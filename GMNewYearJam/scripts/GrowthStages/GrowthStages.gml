function GrowthStages(stage_scale = 1){
	var fullday = (global.fullday*.5)*60;
	//Water level
	var waterloss = 1/(fullday*.8);
	if class.Wtr_lvl <= 1 class.Wtr_lvl -= waterloss*(1-class.Wtr_retention);
	
	
	//General Growth
	var GenGrowth = class.growthrate/(fullday*stage_scale);
	if class.growth < 1 
	{
		class.growth += GenGrowth*max(class.Wtr_lvl,0);
	}
	else
	{
		class.growth = 0;
		class.stage+=1;
	}
	
	//Neglect determines the final quality of the plant 
	if class.Wtr_lvl <= 0 class.neglect += 1/fullday;
	
	//show_debug_message("Growth = " + string(class.growth) + "\nWater Level = " + string(class.Wtr_lvl) + "\nNeglect = "+string(class.neglect));
	
	
	
}//End of function