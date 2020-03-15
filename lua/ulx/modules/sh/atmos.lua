--[[-------------------------------------------------------------------------
Atmos ULX commands - A few ULX commands to control Atmos time & weather.
Copyright (C) 2020 viral32111

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see https://www.gnu.org/licenses/.
---------------------------------------------------------------------------]]

local categoryName="Atmos"

local toggletime=ulx.command(categoryName,"ulx toggletime",function(ply)
	if(SERVER==true)then
		ply:ConCommand("atmos_dnc_pause")
	end
	ulx.fancyLogAdmin(ply,"#A toggled the time.")
end,{"!toggletime"},true)
toggletime:defaultAccess(ULib.ACCESS_ADMIN)
toggletime:help("Toggles (pauses/resumes) the time.")

local settime=ulx.command(categoryName,"ulx settime",function(ply,time)
	if(SERVER==true)then
		ply:ConCommand("atmos_dnc_settime "..tostring(math.Clamp(math.Round(time),0,24)))
	end
	ulx.fancyLogAdmin(ply,"#A set the time to #s.",time)
end,{"!settime"},true)
settime:defaultAccess(ULib.ACCESS_ADMIN)
settime:addParam{type=ULib.cmds.NumArg,hint="Time (24-hour)",min=0,max=24}
settime:help("Sets the time.")

local setstorm=ulx.command(categoryName,"ulx setstorm",function(ply,enabled)
	if(SERVER==true)then
		if(enabled==true)then
			ply:ConCommand("atmos_startstorm")
		else
			ply:ConCommand("atmos_stopstorm")
		end
	end
	ulx.fancyLogAdmin(ply,"#A "..(enabled==true&&"enabled"||"disabled").." a storm.")
end,{"!setstorm"},true)
setstorm:defaultAccess(ULib.ACCESS_ADMIN)
setstorm:addParam{ type=ULib.cmds.BoolArg,hint="Enable storm?"}
setstorm:help("Enables or disables a storm.")

local setsnow=ulx.command(categoryName,"ulx setsnow",function(ply,enabled)
	if(SERVER==true)then
		if(enabled==true)then
			ply:ConCommand("atmos_startsnow")
		else
			ply:ConCommand("atmos_stopsnow")
		end
	end
	ulx.fancyLogAdmin(ply,"#A "..(enabled==true&&"enabled"||"disabled").." a snow storm.")
end,{"!setsnow"},true)
setsnow:defaultAccess(ULib.ACCESS_ADMIN)
setsnow:addParam{ type=ULib.cmds.BoolArg,hint="Enable snow?"}
setsnow:help("Enables or disables a snow storm.")