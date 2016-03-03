/*
 * Author: Garth 'L-H' de Wet
 * Cancels explosives placement.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Key <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [unit, 1] call ace_explosives_fnc_cancelPlacement
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_unit", "_key"];

if (_key != 1) exitWith {};

if (_unit == ACE_player &&
    {([_unit, objNull, ["isNotSwimming"]] call EFUNC(common,canInteractWith))} &&
    {(_magClassname in (magazines _unit))}
) exitWith {};

GVAR(placeAction) = PLACE_CANCEL;
