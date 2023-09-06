function GrowthStages(stage_scale = 1){
	//A full day is 6 minutes
	var fullday = (global.fullday*.25)*60;
	//Sets waterloss value. Should reach 1 by 80% of a full day
	var waterloss = 1/(fullday*.8);
	//4 mins 48 seconds
	//If water level is less than 1, depelete it by water loss
	//Water loss is negated by water retention stat 
	if class.Wtr_lvl <= 1 class.Wtr_lvl -= waterloss*(1-class.Wtr_retention);
	
	
	//General Growth
	//State scale sets the percent of the day that it takes to complete a stage of growth
	var GenGrowth = class.growthrate/(fullday*stage_scale);
	if class.growth < 1 
	{
		class.growth += GenGrowth*max(class.Wtr_lvl,0);
	}
	else
	{
		class.growth = 0;
		class.stage += 1;
	}
	
	//Neglect determines the final quality of the plant 
	if class.Wtr_lvl <= 0 class.neglect += 1/fullday;
	
	
}//End of function