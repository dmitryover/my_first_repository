fnc_chat = {
	private['_display','_chat','_txt'];
	disableSerialization;
	if (DZE_chatACT) exitWith { };
	DZE_chatACT = true;
	#define ch(X) ([X, _txt] call fnc_inString2)
	#define engS ([_txt] call fnc_inString3)
	#define Channel ctrlText ((findDisplay 63) displayCtrl 101)
	sleep 0.5;
	_display = findDisplay 24;
	while {!(isNull _display)} do {
		_chat = _display displayCtrl 101;
		_txt = ctrlText _chat;
		if (_txt != "" && ((Channel == localize "str_channel_side")||(Channel == localize "str_channel_direct"))) then {
		if(engS) then {
				(_display) closeDisplay 2;
				systemchat ("[Chat_control]: Вы можете писать в чат только русскими буквами!");
			};	
		if(ch('105') OR ch('пизд') OR ch('хули') OR ch('бля') OR ch('ебат') OR ch('ебан') OR ch('ебал') OR ch('ебл') OR ch('нах') OR ch('выеб') OR ch('пидар') OR ch('пидор') OR ch('хуе') OR ch('мамк') OR ch('мамаш') OR ch('хуй') OR ch('хуи') OR ch('еба') OR ch('еби') OR ch('ебн')) then
			{
				(_display) closeDisplay 2;
				chat_count = chat_count + 1;
				if (chat_count > 1) then {
				chat_time = 300;
				cycle_block_chat = [] spawn fnc_block_chat;	
				PVDZE_vddbt_ecbs = [player,5];
				publicVariableServer 'PVDZE_vddbt_ecbs';
				systemchat ("[Chat_control]: Вы заблокированы в дополнительном и прямом чате на 5 мин!");				
				} else {
				systemchat ("[Chat_control]: Первое и последнее предупреждение, материться в чате нельзя!");	
				};
			};
		};	
		sleep 0.2;
	};
	terminate chat_spawn;
	DZE_chatACT = false;
};
