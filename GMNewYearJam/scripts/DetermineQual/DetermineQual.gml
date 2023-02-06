function DetermineQual(){
	//Calculate Quality 
	if class.neglect < .1
	{
		class.quality = qualities.Excellent;
		final_qual = "Excellent!";
		color = c_yellow;
	}
	else if class.neglect > .1 and class.neglect < .5
	{
		class.quality = qualities.great;
		final_qual = "Great!";
		color = c_lime;
	}
	else if class.neglect > .5 
	{
		class.quality = qualities.normal;
		final_qual = "Not Bad!";
		color = c_teal;
	}
	//Calculate money earned
	class.value = (class.base*base_mod) * class.quality;
	
}