
//  @file Version: 1.0
//  @file Name: playerSetup.sqf
//  @file Author: [404] Deadbeat
//  @file Created: 20/11/2012 05:19
//  @file Args:

_player = _this;

//Player initialization
enableSentences false;
_player removeWeapon "ItemRadio";
_player removeWeapon "ItemGPS";
removeAllWeapons _player;
removeBackpack _player;

//Default case means something fucked up.
_player addMagazine "6Rnd_45ACP";
_player addMagazine "6Rnd_45ACP";
_player addWeapon "revolver_gold_EP1";
_player selectWeapon "revolver_gold_EP1";

//Set wasteland inventory default variables before changed by member status
_player setVariable["cmoney",100,false];
_player setVariable["canfood",2,false];
_player setVariable["medkits",0,false];
_player setVariable["water",2,false];
_player setVariable["fuel",0,false];
_player setVariable["repairkits",0,false];
_player setVariable["fuelFull", 0, false];
_player setVariable["fuelEmpty", 1, false];
_player setVariable["bombs",false,false];
_player setVariable["spawnBeacon",0,false];
_player setVariable["camonet",0,false];

//Set default hunger and thirst level
thirstLevel = 100;
hungerLevel = 100;

//REWARD SYS START

if(((getPlayerUID player) in members)) then
{
    hint format [":: TESTING REWARDS SYS :: IN ARRAY MEMBERS"];
    _player setVariable["fuel",1,false];
    _player addWeapon "ItemGPS";
    _player addWeapon "ItemRadio";
    
        if(((getPlayerUID player) in members1)) then
        {
            _player groupChat format[":: TESTING REWARDS SYS :: IN ARRAY MEMBERS1"];
            removeAllWeapons _player;
            _player addMagazine "6Rnd_45ACP";
            _player addWeapon "revolver_gold_EP1";
            _player selectWeapon "revolver_gold_EP1";
        };

        if(((getPlayerUID player) in members2)) then
        {
            //add player uid to members1
            _player groupChat format[":: TESTING REWARDS SYS :: IN ARRAY MEMBERS2"];
            removeAllWeapons _player;
            _player addMagazine "6Rnd_45ACP";
            _player addMagazine "6Rnd_45ACP";
            _player addWeapon "revolver_gold_EP1";
            _player selectWeapon "revolver_gold_EP1";
            _player setVariable["cmoney",125,false];
            _player setVariable["medkits",1,false];
        };

        if(((getPlayerUID player) in members3)) then
        {
            _player groupChat format[":: TESTING REWARD SYS :: IN ARRAY MEMBERS3"];
            removeAllWeapons _player;
            _player addMagazine "6Rnd_45ACP";
            _player addMagazine "6Rnd_45ACP";
            _player addMagazine "6Rnd_45ACP";
            _player addWeapon "revolver_gold_EP1";
            _player selectWeapon "revolver_gold_EP1";
            _player setVariable["cmoney",150,false];
            _player setVariable["medkits",1,false];
        };

        if(((getPlayerUID player) in donators)) then
        {
            _player groupChat format[":: TESTING REWARDS SYS :: IN ARRAY DONATORS"];
            //add player uid to members1, members2, members3
            
              if(((getPlayerUID player) in donators1)) then
                  {
                    _player groupChat format[":: TESTING REWARDS SYS :: IN ARRAY DONATORS1"];
                    removeAllWeapons _player;
                    _player addMagazine "30Rnd_9x19_UZI_SD";
                    _player addWeapon "UZI_SD_EP1";
                    _player selectWeapon "UZI_SD_EP1";
                    _player setVariable["cmoney",300,false];
                    _player setVariable["medkits",2,false];
                    _player setVariable["repairkits",1,false];
                    };
        };

}
else
{
if(str(playerSide) in ["WEST"]) then
{
    removeAllWeapons _player;
    _player addMagazine "7Rnd_45ACP_1911";
    _player addMagazine "7Rnd_45ACP_1911";
    _player addWeapon "Colt1911";
    _player selectWeapon "Colt1911";

};

if(str(playerSide) in ["EAST"]) then
{
    removeAllWeapons _player;
    _player addMagazine "8Rnd_9x18_Makarov";
    _player addMagazine "8Rnd_9x18_Makarov";
    _player addWeapon "Makarov";
    _player selectWeapon "Makarov";
};

if(str(playerSide) in ["GUER"]) then
{
    removeAllWeapons _player;
    _player addMagazine "17Rnd_9x19_glock17";
    _player addWeapon "glock17_EP1";
    _player selectWeapon "glock17_EP1";
};
};

//REWARD SYS END

_player addrating 1000000;
_player switchMove "amovpknlmstpsraswpstdnon_gear";

[] execVM "client\functions\playerActions.sqf";

_player groupChat format["Player Initialization Complete"];
playerSetupComplete = true;