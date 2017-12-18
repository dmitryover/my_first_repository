private ["_stack","_found"];
_stack = toArray (toLower(str(_this select 0)));
_found = false;
{
  if ((_x >= 65 && _x <=90) || (_x >= 97 && _x <=122)) exitWith {_found = true};
} forEach _stack;
_found
