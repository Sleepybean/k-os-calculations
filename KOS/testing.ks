// Drag Experiment

local curr_density is 0.
local curr_temp is 0.
local curr_velocity is 0.
local CSArea is (constant:pi / 4) * 1.25^2.
local Cd is 0.
local curr_weight is 0.

function air_density {

	local parameter atm_pressure.
	local parameter atm_temperature.
	local parameter gas_constant is 287.058.
	
	return atm_pressure / (atm_temperature * gas_constant).

}

log "time, altitude, velocity, acc, grav, pres, temp," to "mylog.csv".

until false {
		wait 0.01.
		log time:seconds + ", " + altitude + ", " + ship:velocity:surface:mag + ", " + ship:sensors:acc:mag + ", " + ship:sensors:grav:mag + ", " + ship:sensors:pres + ", " + ship:sensors:temp + ", " to "mylog.csv".
}
