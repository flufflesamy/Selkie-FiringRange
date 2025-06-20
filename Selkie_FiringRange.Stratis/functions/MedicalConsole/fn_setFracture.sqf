#include "..\macros.hpp"
/*
	Author: Amy

	Description:
		Adds KAM fracture to bodypart for a unit.

	Parameter(s):
		0: Unit <OBJECT>
        1: Body Part <STRING>
        2: Fracture Type <STRING>

	Returns:
		Nothing

	Examples:
		[player, "LeftLeg", "Simple"] call AMY_FiringRange_fnc_setFracture;
*/

params ["_unit", "_bodyPart", "_fracType"];

// set body part to fractured
private _fractureArray = [0,0,0,0,0,0];
private _part = ALL_BODY_PARTS find toLower _bodyPart;
_fractureArray set [_part, 1];

// set type of fracture for body part
private _kamfractureArray = [0,0,0,0,0,0];
private _type = FRACTURE_TYPE find toLower _fracType;
_kamfractureArray set [_part, _type];

// set fracture variables for unit
_unit setVariable ["kat_medical_fractures", _kamfractureArray, true];
_unit setVariable ["ace_medical_fractures", _fractureArray, true];

// update damage effects
_unit call ACEEFUNC(medical_system,updateDamageEffects);