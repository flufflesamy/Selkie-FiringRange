#include "..\functions\macros.hpp"

params ["_console"];

_console addAction["Spawn Wraith Close", 
["OPTRE_FC_Wraith", "mkrWraithClose"] call AFUNC(createVehOnMarker)];