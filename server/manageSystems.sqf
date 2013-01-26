if(!X_Server) exitWith {};

//---------------------------------------------------------------------------------------//
//
// system management - use this to enable/disable individual systems
//								  - true = enable
//								  - false = disable
//
//--------------------------------------------------------------------------------------//

afkSys = "true";
publicVariable " afkSys";

rewardSys = "true";
publicVariable " rewardSys";


//---------------------------------------------------------------------------------------//
//
// AFK management - use this to adjust the AFK system
//								  - true = enable
//								  - false = disable
//
//--------------------------------------------------------------------------------------//

afkSysRandomArea = "true";
publicVariable "afkSysRandomArea";

afkSysSetCaptive = "true";
publicVariable "afkSysSetCaptive";

afkSysRandomArea = "true";
publicVariable "afkSysUseRandomArea";

afkSysStopDamage = "true";
publicVariable "afkSysStopDamage";

afkSysBadList = [
						"" //a player UID for which AFK sysem will be revoked
						];
publicVariable "afkSysBadList";


//---------------------------------------------------------------------------------------//
//
// REWARD management - use this to adjust the REWARD system
//								  - true = enable
//								  - false = disable
//
//--------------------------------------------------------------------------------------//

rewardSysWelcome = "true";
publicVariable "rewardSysWelcome";

rewardSysCleanup = "true";
publicVariable "rewardSysCleanup";

rewardSysCleanupBalancing = "false";
publicVariable "rewardSysCleanupBalancing";
