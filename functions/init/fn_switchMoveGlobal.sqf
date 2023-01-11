params [["_unit",objNull,[objNull]], ["_move","",[""]]];

pvar_switchMoveGlobal = [_unit, _move];
publicVariable "pvar_switchMoveGlobal";

_unit switchMove _move;
