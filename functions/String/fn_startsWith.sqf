params [["_needles",[],["",[]]], ["_haystack","",[""]], ["_caseSensitive",false,[false]]];

if (_needles isEqualType "") exitWith
{
	if (_needles isEqualTo "") exitWith { false };

	if (_caseSensitive) then
	{
		_needles isEqualTo (_haystack select [0, count _needles])
	}
	else
	{
		_needles == (_haystack select [0, count _needles])
	}
};

if (_caseSensitive) then
{
	_needles findIf {_x isEqualTo (_haystack select [0, count _x])} != -1
}
else
{
	_needles findIf {_x == (_haystack select [0, count _x])} != -1
}