_welcomeColor = "#17FF41";
_separatorColor = "#FFFFFF";
_titleColor = "#52bf90";
_mainColor = "#FFFFFF";
_importantText = "FF1717";

_news1Title = "PERKS";
_news1Text = "customised loadouts for members of each group";
_news2Title = "GUN STORES";
_news2Text = "CZ550, M40A3 added to gun stores";
_infoText = "see the extended news stories @ WASTELANDUK.INFO";

_delay = "15";


sleep 15;

if(((getPlayerUID player) in members)) then
{
	HINT parseText format ["<t align='center' color='%1' shadow='2' size='1.45'>Welcome back %10</t><br/><t align='center' color='%2'>-------------------------------------</t><br/><t align='center' color='%3' size='1.1'>V - LATEST NEWS - V</t><br/><br/><t align='center' color='%3'>%5</t><br/><t align='center' color='%4'>%6</t><br/><br/><t align='center' color='%3'>%7</t><br/><t align='center' color='%4'>%8</t><br/><br/><t align='center' color='%4' size='0.8'>%9</t>", _welcomeColor, _separatorColor, _titleColor, _mainColor, _news1Title, _news1Text, _news2Title, _news2Text, _infoText, name player];

		if(((getPlayerUID player) in members1)) then
		{
			[str ("Welcome back!"), str("TIER 1")] spawn BIS_fnc_infoText;
		};

		if(((getPlayerUID player) in members2)) then
		{
			[str ("Welcome back!"), str("TIER 2")] spawn BIS_fnc_infoText;
		};
		if(((getPlayerUID player) in members1)) then
		{
			[str ("Welcome back!"), str("TIER 1")] spawn BIS_fnc_infoText;
		}
		else
		{
			[str ("Welcome back!"), str("TIER error:noTier"), str("^ tell Moses")] spawn BIS_fnc_infoText;
		};

}
else
{
	HINT parseText format ["<t align='center' color='%1' shadow='2' size='1.45'>Welcome %10</t><br/><t align='center' color='%2'>-------------------------------------</t><br/><t align='center' color='%3' size='1.1'><t align='center' color='%9'>YOU ARE NOT A MEMBER JOIN DAYZUK.COM TO BE ENTITLED TO A MEMBER TIER 1 LOADOUT</t>", _welcomeColor, _separatorColor, _titleColor, _mainColor, _news1Title, _news1Text, _news2Title, _news2Text, _importantText, name player];

	[str ("Welcome!"), str("TIER 0"), str("Join DAYZUK.COM")] spawn BIS_fnc_infoText;
};

sleep _delay;

_player groupChat format[":: testing sleep as a var];
