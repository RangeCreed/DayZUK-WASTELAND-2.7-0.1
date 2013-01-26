//	@file Version: 1.0
//	@file Name: playerGoAFK.sqf
//	@file Author: [DAYZUK] Moses
//	@file Created: 20/11/2012 05:19
//	@file Args:

_welcomeColor = "#17FF41";
_separatorColor = "#FFFFFF";
_titleColor = "#52bf90";
_mainColor = "#FFFFFF";
_importantText = "FF1717";

_infoText = "%8, you have initiated an AWAY request, once the 60 second countdown timer reaches 0, you will be given the AWAY status.";

_warnText = "%8, you have initiated an AWAY request, once the 60 second countdown timer reaches 0, you will be given the AWAY status.";
_warnTitle = "AWAY requested...";

_mainTItle = "AWAY";
_mainText = "%8, you are now AWAY. Your character has been moved to the AWAY debug and your character is safe for a maximum of 1 hour. After 1 hour you will be returned to the lobby, from there BEC will deal with lobby idling.";

[pivate "_timerState"];


if(toggleAFKsys == "true") then
{
diag_log ["PLAYER :: %1 :: AWAY :: INITIATED", name player];
	if(((getPlayerUID player) in afkBadList)) then
	{
	diag_log ["PLAYER :: %1 :: AWAY :: NOT ALLOWED FOR PLAYER", name player];
	hint format ["AFK SYSTEM IS DISABLED FOR YOU!"];
		 
	}
	else
	{
		HINT parseText format ["<t align='center' color='%1' shadow='2' size='1.45'>%6</t><br/><t align='center' color='%2'>-------------------------------------</t><br/><br/><t align='center' color='%4'>%5</t><br/>", _welcomeColor, _separatorColor, _titleColor, _mainColor, _warnText, _warnTile, _infoText, name player];

> forEach loop counter to 60 <

HINT parseText format ["<t align='center' color='%1' shadow='2' size='1.45'>%6</t><br/><t align='center' color='%2'>-------------------------------------</t><br/><br/><t align='center' color='%4'>%5</t><br/>", _welcomeColor, _separatorColor, _titleColor, _mainColor, _mainText, _maintitle, _infoText, name player];
		
		> AFK ACTIONS HERE <
	};
	
diag_log ["PLAYER :: %1 :: AWAY :: COMPLETE", name player];


}
else
{
diag_log ["PLAYER :: %1 :: AWAY :: DISABLED", name player];
};