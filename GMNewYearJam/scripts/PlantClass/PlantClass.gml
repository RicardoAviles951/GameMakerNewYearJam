function PlantClass(_name,_stage,_wtrlevel,_love,_sprite,_qual,_wtr_ret,_growth,_growthrate,_value, _neg,_base = 10) constructor{
	name = _name;
	sprite = _sprite;
	stage = _stage;
	Wtr_lvl = _wtrlevel;
	Wtr_retention = _wtr_ret;
	growth = _growth;
	growthrate = _growthrate;
	value = _value;
	love = _love;
	quality = _qual;
	neglect = _neg;
	index = 0;
	base = _base;
}