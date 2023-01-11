waitUntil {!(isNull (findDisplay 46))};

while {true} do
{
	waitUntil { sleep 0.2; alive player && [["Aswm","Assw","Absw","Adve","Asdv","Abdv"], animationState player] call A3A_fnc_startsWith };
	_animSpeed = getAnimSpeedCoef player;
	player setAnimSpeedCoef 2.5;
	waitUntil { !([["Aswm","Assw","Absw","Adve","Asdv","Abdv"], animationState player] call A3A_fnc_startsWith) };
	player setAnimSpeedCoef 1;
};
