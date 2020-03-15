-- This belongs in lua/atmos/init.lua

concommand.Add("atmos_dnc_pause",function(pl,cmd,args)
	if(IsValid(pl)&&pl:AtmosAdmin())then
		atmos:TogglePause()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),pl:Nick().." has "..(atmos.m_Paused and"paused"or"resumed").." the time.")
	elseif(!IsValid(pl))then
		atmos:TogglePause()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),"Time has been "..(atmos.m_Paused and"paused"or"resumed")..".")
	end
end)

concommand.Add("atmos_dnc_settime",function(pl,cmd,args)
	local timeToSet=math.Clamp(math.Round(tonumber(args[1] or"0")),0,24)
	if(IsValid(pl)&&pl:AtmosAdmin())then
		atmos:SetTime(timeToSet)
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),pl:Nick().." has set the time to "..timeToSet..".")
	elseif(!IsValid(pl))then
		atmos:SetTime(timeToSet)
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),"The time has been set to "..timeToSet..".")
	end
end)

concommand.Add("atmos_startstorm",function(pl,cmd,args)
	if(atmos:GetStorming()||atmos:GetSnowing())then return end
	if(IsValid(pl)&&pl:AtmosAdmin())then
		atmos:StartStorm()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),pl:Nick().." has started a storm.")
	elseif(!IsValid(pl))then
		atmos:StartStorm()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),"A storm has been started.")
	end
end)

concommand.Add("atmos_stopstorm",function(pl,cmd,args)
	if(!atmos:GetStorming())then return end
	if(IsValid(pl)&&pl:AtmosAdmin())then
		atmos:StopStorm()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),pl:Nick().." has stopped a storm.")
	elseif(!IsValid(pl))then
		atmos:StopStorm()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),"A storm has been stopped.")
	end
end)

concommand.Add("atmos_startsnow",function(pl,cmd,args)
	if(atmos:GetStorming()||atmos:GetSnowing())then return end
	if(IsValid(pl)&&pl:AtmosAdmin())then
		atmos:StartSnow()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),pl:Nick().." has started a snow storm.")
	elseif(!IsValid(pl))then
		atmos:StartSnow()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),"A snow storm has been started.")
	end
end)

concommand.Add("atmos_stopsnow",function(pl,cmd,args)
	if(!atmos:GetSnowing())then return end
	if(IsValid(pl)&&pl:AtmosAdmin())then
		atmos:StopSnow()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),pl:Nick().." has stopped a snow storm.")
	elseif(!IsValid(pl))then
		atmos:StopSnow()
		AtmosMessageAll(Color(255,153,0),"[atmos] ",Color(255,255,255),"A snow storm has been stopped.")
	end
end)