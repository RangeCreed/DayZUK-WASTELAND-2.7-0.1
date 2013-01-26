//	@file Version: 1.0
//	@file Name: checkAdmin2.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

_welcomeColor = "#17FF41";
_separatorColor = "#FFFFFF";
_titleColor = "#52bf90";
_importantText = "FF1717";

_infoText = "see the extended news stories @ WASTELANDUK.INFO";

_isAdmin = serverCommandAvailable "#kick";

if (_isAdmin) then {
    _uid = getPlayerUID player;
    serverAdministrators set [count serverAdministrators, _uid];
    player sideChat "You have been made moderator, please re-open the menu";
}
else
{
	HINT parseText format ["<t align='center' color='%1' shadow='2' size='1.45'>Hello %5</t><br/><t align='center' color='%2'>-------------------------------------</t><br/><t align='center' color='%3' size='1.1'><t align='center' color='%5'>If you are recieving this message and you are a admin or moderator please send your Player ID to Moses at DAYZUK.COM</t>", _welcomeColor, _separatorColor, _titleColor, _importantText, name player];
};