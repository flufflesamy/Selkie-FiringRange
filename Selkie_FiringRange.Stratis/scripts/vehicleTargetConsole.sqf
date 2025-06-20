_pos = getMarkerPos "markerWraithClose";
_veh = createVehicle ["OPTRE_FC_Wraith", _pos, [], 0, "NONE"];
_veh setVariable ["BIS_enableRandomization", false];

_veh addEventHandler ["Dammaged", {
    hint "Damaged!";
}];

hint "Created Wraith!";


