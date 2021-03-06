// Find Plots by RimBlock (http://epochmod.com/forum/index.php?/user/12612-rimblock/)

private ["_player","_isPole","_IsNearPlot","_nearestPole","_distance","_findNearestPoles","_findNearestPole","_friendly","_return","_pos"];

_player = _this select 0;
_isPole = _this select 1;
_IsNearPlot = 0;
_nearestPole = "";
_findNearestPole = [];

_callBack = _player call FNC_plotBoundaries;

if(_isPole) then {
	_distance = _callBack select 1;
}else{
	_distance = _callBack select 0;
};

_pos = [vehicle _player] call FNC_getPos;

// check for near plot
_findNearestPole = _pos nearEntities ["Plastic_Pole_EP1_DZ", _distance];

_IsNearPlot = count (_findNearestPole);
if (_IsNearPlot > 0) then{_nearestPole = _findNearestPole select 0;}else{_nearestPole = objNull;};

_return = [_distance, _IsNearPlot, _nearestPole];
_return
