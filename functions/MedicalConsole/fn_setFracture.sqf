#include "..\macros.hpp"

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

// raise event to update fractures
["ace_medical_fractures", [_unit, _part]] call CFUNC(localEvent);

// update damage effects
_unit call ACEEFUNC(medical_system,updateDamageEffects);