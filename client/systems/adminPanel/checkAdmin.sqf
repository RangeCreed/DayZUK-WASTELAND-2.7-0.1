//	@file Version: 1.0
//	@file Name: checkAdmin.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

private ["_uid","_handle"];

_uid = getPlayerUID player;
if ((_uid in administrators) OR (_uid in serverAdministrators)) then {
    if ((_uid in administrators)) then {
		[] execVM "client\systems\adminPanel\loadAdministratorMenu.sqf";
        hint "Welcome Admin! Use your powers responsibly or risk losing your privilages!";		
	};
    if ((_uid in serverAdministrators)) then {
		execVM "client\systems\adminPanel\loadServerAdministratorMenu.sqf";
        hint "Welcome Server Admin! Use your powers responsibly or risk losing your privilages!";		
	};	
} else {
    sleep 1;
    _handle = player execVM "client\systems\adminPanel\checkAdmin2.sqf"; 
    waitUntil {scriptDone _handle};
};
