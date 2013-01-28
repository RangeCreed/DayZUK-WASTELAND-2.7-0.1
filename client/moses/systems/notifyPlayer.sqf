_welcomeColor = "#17FF41";
_separatorColor = "#FFFFFF";
_titleColor = "#52bf90";
_mainColor = "#FFFFFF";
_importantText = "FF1717";

_infoText = "%8, you have initiated an AWAY request, once the 60 second countdown timer reaches 0, you will be given the AWAY status.";

_warnText = "%8, you have initiated an AWAY request, once the 60 second countdown timer reaches 0, you will be given the AWAY status.";
_warnTitle = "AWAY requested...";

HINT parseText format ["<t align='center' color='%1' shadow='2' size='1.45'>%6</t><br/><t align='center' color='%2'>-------------------------------------</t><br/><br/><t align='center' color='%4'>%5</t><br/>", _welcomeColor, _separatorColor, _titleColor, _mainColor, _warnText, _warnTile, _infoText, name player];
