//	@file Version: 1.0
//	@file Name: playerGoAFK.sqf
//	@file Author: [DAYZUK] Moses
//	@file Created: 20/11/2012 05:19
//	@file Args:



if(afkSys == "true") then
{

	if(((getPlayerUID player) in afkBadList)) then
	{
		hint format ["AFK SYSTEM HAS BEEN DISABLED FOR YOUR CHARACTER!"];	 
	}
	else
	{
		[] execVM "client/moses/systems/warnPlayer.sqf";
	};

}
else
{
	hint format ["THE AFK SYSTEM IS CURRENTLY DISABLED ON THE SERVER!"];
};
