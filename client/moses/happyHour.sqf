//@file Version: 1.0
//@file Name: happyHour.sqf
//@file Author: [DAYZUK] Moses
//@file Created: 29/01/2013 18:27

staticHeliList = ["AH64D","F35B"];

vehicleWeapons = ["BAF_AS50_Scoped"];

civilianVehicles = ["URAL_ZU23_TK_EP1","HMMWV_TOW"];

militaryVehicles = ["2S6M_Tungsta","ZSU_TK_EP1"];

armedMilitaryVehicles = ["M1A1_US_DES_EP1","MLRS_DES_EP1","M1128_MGS_EP1"];

staticWeaponsList = ["ZU23_TK_EP1","Stinger_Pod_US_EP1","D30_TK_EP1"];

weaponsArray = [["M240","M240",0,0],["MG36 Camo","MG36_camo",0,0],"RPG-7","RPG7V",0,0],["SMAW","SMAW",0,0],["Stinger","Stinger",0,0],["Javelin","Javelin",0,0],["M107","m107",0,0]];

ammoArray = [["100Rnd. MG36 Mag","100Rnd_556x45_BetaCMag",0],["100Rnd. M240","100Rnd_762x51_M240",0],["PG-7V.","PG7V",0],["SMAW-HEAA","SMAW_HEAA",0],["Stinger Ammo","Stinger",0],["Javelin Ammo","Javelin",0]];

accessoriesArray = [["Laser Designator","Laserdesignator",0],["NV Goggles","NVGoggles",0],["GPS","ItemGPS",0]];

generalStore = [
  ["Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",0,0],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",0,0],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\briefcase.paa",0,0],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",0,0],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",0,0],
  ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",0,0],
	["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","",0,0],
  ["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "",0,0]  
];

thirstLevel = 9999; hungerLevel = 9999; player setVariable["cmoney",9999,false];

sleep 3300;

hint format ["HAPPY HOUR: ending in 10 minutes"];

sleep 60;

hint format ["HAPPY HOUR: ending in 60 seconds!"];
