/*
	Author: Amy

	Description:
		<function description>

	Parameter(s):
		0: vehicle - (Optional, default <default value>) <description>

	Returns:
		<return type>

	Examples:
		<example>
*/

#include "..\macros.hpp"

params ["_vehName", "_markerName"];

hint format ["Spawned %1!", _vehName];

private _pos = getMarkerPos[_markerName];

private _veh = createVehicle[_vehName, _pos, [], 0, ""];

_veh setVariable ["BIS_enableRandomization", false];

private _id = [_veh, "Dammaged", {
	params ["_unit", "_hitSelection", "_damage", "_hitPartIndex", "_hitPoint", "_shooter", "_projectile"];

	hint format ["Dealt %1 damage to %2!", _damage, _hitPoint];

	if (_unit call AFUNC(isDestroyed)) then
	{
		hint "Vehicle Destroyed!";
		[{
			params ["_unit", "_thisID"];
			deleteVehicle _unit select 0;
			_unit removeEventHandler ["Dammaged", _thisID];
		}, [_unit, _thisID], 5] call CFUNC(waitAndExecute);
	};
}, [_veh]] call CFUNC(addBISEventHandler);

_veh // Return