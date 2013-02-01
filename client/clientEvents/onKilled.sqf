//	@file Version: 1.0
//	@file Name: onKilled.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

_player = (_this select 0) select 0;
_killer = (_this select 0) select 1;
if(isnil {_player getVariable "cmoney"}) then {_player setVariable["cmoney",0,true];};

PlayerCDeath = [_player];
publicVariable "PlayerCDeath";
if (isServer) then {
	_id = PlayerCDeath spawn serverPlayerDied; 
};

if(!local _player) exitwith {};

if((_player != _killer) && (vehicle _player != vehicle _killer) && (playerSide == side _killer) && (str(playerSide) in ["WEST", "EAST"])) then {
	pvar_PlayerTeamKiller = objNull;
	if(_killer isKindOf "CAManBase") then {
		pvar_PlayerTeamKiller = _killer;
	} else {
		_veh = (_killer);
		_trts = configFile >> "CfgVehicles" >> typeof _veh >> "turrets";
		_paths = [[-1]];
		if (count _trts > 0) then {
			for "_i" from 0 to (count _trts - 1) do {
				_trt = _trts select _i;
				_trts2 = _trt >> "turrets";
				_paths = _paths + [[_i]];
				for "_j" from 0 to (count _trts2 - 1) do {
					_trt2 = _trts2 select _j;
					_paths = _paths + [[_i, _j]];
				};
			};
		};
		_ignore = ["SmokeLauncher", "FlareLauncher", "CMFlareLauncher", "CarHorn", "BikeHorn", "TruckHorn", "TruckHorn2", "SportCarHorn", "MiniCarHorn", "Laserdesignator_mounted"];
		_suspects = [];
		{
			_weps = (_veh weaponsTurret _x) - _ignore;
			if(count _weps > 0) then {
				_unt = objNull;
				if(_x select 0 == -1) then {_unt = driver _veh;}
				else {_unt = _veh turretUnit _x;};
				if(!isNull _unt) then {
					_suspects = _suspects + [_unt];
				};
			};
		} forEach _paths;

		if(count _suspects == 1) then {
			pvar_PlayerTeamKiller = _suspects select 0;
		};
	};
};

if(!isNull(pvar_PlayerTeamKiller)) then {
	publicVar_teamkillMessage = pvar_PlayerTeamKiller;
	publicVariable "publicVar_teamkillMessage";
};


//rewards cleanup ---------------------------- START
if(((getPlayerUID player) in members)) then
{
    hint format [":: TESTING PERKS SYS :: ANY BACKPACK AND SOME GEAR WAS REMOVED FROM YOUR CORPSE"];
    removeBackpack player;
    player removeWeapon "ItemGPS";
    player removeWeapon "revolver_gold_EP1";
    player removeWeapon "ItemGPS";
    player setVariable["cmoney",0,false];
    player setVariable["medkits",0,false];
    player setVariable["repairkits",0,false];

    if(((getPlayerUID player) in members1)) then
        {
            player groupChat format[":: TESTING REWARDS SYS :: IN ARRAY MEMBERS1 :: REMOVED MEMBERS1 REWARDS"];
        };

        if(((getPlayerUID player) in members2)) then
        {
            //add player uid to members1
            player groupChat format[":: TESTING REWARDS SYS :: IN ARRAY MEMBERS2 :: REMOVED MEMBERS2 REWARDS"];

        };

        if(((getPlayerUID player) in members3)) then
        {
            player groupChat format[":: TESTING REWARDS SYS :: IN ARRAY MEMBERS3 :: REMOVED MEMBERS3 REWARDS"];
            player removeWeapon "Sa61_EP1";	
        };

        if(((getPlayerUID player) in donators)) then
        {
            player groupChat format[":: TESTING REWARDS SYS :: IN ARRAY DONATORS :: REMOVED DONATORS REWARDS"];
            //add player uid to members1, members2, members3
            
              if(((getPlayerUID player) in donators1)) then
                  	{
                    player groupChat format[":: TESTING REWARDS SYS :: IN ARRAY DONATORS1 :: REMOVED DONATORS1 REWARDS"];
                    player removeWeapon "UZI_SD_EP1";

                  	};
        };

}
else
{
	player removeWeapon "ItemRadio";	
};

//rewards cleanup ---------------------------- END


private["_a","_b","_c","_d","_e","_f","_m","_player","_killer", "_to_delete"];

_to_delete = [];
_to_delete_quick = [];

if((_player getVariable "cmoney") > 0) then {
	_m = "EvMoney" createVehicle (position _player);
	_m setVariable["money", (_player getVariable "cmoney"), true];
	_m setVariable ["owner", "world", true];
	_to_delete = _to_delete + [_m];
};

if((_player getVariable "medkits") > 0) then {
	for "_a" from 1 to (_player getVariable "medkits") do {	
		_m = "CZ_VestPouch_EP1" createVehicle (position _player);
		_to_delete = _to_delete + [_m];
	};
};

if((_player getVariable "repairkits") > 0) then {
	for "_b" from 1 to (_player getVariable "repairkits") do {	
		_m = "Suitcase" createVehicle (position _player);
		_to_delete = _to_delete + [_m];
	};
};

publicVar_objectsToDelete = [_to_delete, _to_delete_quick];
publicVariableServer "publicVar_objectsToDelete";

true spawn {
	waitUntil {playerRespawnTime < 2};
	titleText ["", "BLACK OUT", 1];
};
