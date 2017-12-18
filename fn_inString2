private ["_needle","_amdstack","_needleLen","_amd","_found"];
#define not_sym_unic [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,58,59,60,61,62,64,91,92,93,94,95,96,123,124,125,126]
_needle = toLower(_this select 0);
_amdstack = toArray (toLower(str(_this select 1)));
_needleLen = count toArray _needle;
{ _amdstack = _amdstack - [_x]; } forEach not_sym_unic;
_amd = +_amdstack;
_amd resize _needleLen;
_found = false;
for "_i" from _needleLen to count _amdstack do {
	if (toString _amd == _needle) exitWith {_found = true};
	_amd set [_needleLen, _amdstack select _i];
	_amd set [0, "x"];
	_amd = _amd - ["x"]
};
_found
