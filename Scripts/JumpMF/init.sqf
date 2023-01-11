//////////////////////////////////////////////////////////////////
// Script File for [Arma 3] - init.sqf
// Created by: Das Attorney
// Modified by: AgentRev
//////////////////////////////////////////////////////////////////

if (!hasInterface) exitWith {};

mf_compile = compileFinal
('
	private ["_path", "_code"];
	_path = "";

	switch (true) do {
		case (_this isEqualType ""): {
			_path = _this;
		};
		case (_this isEqualType []): {
			_path = _this joinString "\";
		};
		case (_this isEqualType {}): {
			_code = str _this;
			_code = _code select [1, count _code - 2];
		};
	};

	if (isNil "_code") then {
		compileFinal preProcessFileLineNumbers _path
	} else {
		compileFinal _code
	}
');

horde_jumpmf_var_jumping = false;
horde_jumpmf_fnc_detect_key_input = "Scripts\JumpMF\detect_key_input.sqf" call mf_compile;

waitUntil {!isNull findDisplay 46};
(findDisplay 46) displayAddEventHandler ["KeyDown", horde_jumpmf_fnc_detect_key_input];
