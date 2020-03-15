-- This belongs at the bottom of lua/atmos/shared.lua

local adminGroups={
	["trialmoderator"]=true,
	["moderator"]=true,
	["admin"]=true,
	["superadmin"]=true,
	["founders"]=true
}

function meta:AtmosAdmin()
	return adminGroups[self:GetUserGroup()]==true
end

function meta:AtmosVIP()
	return adminGroups[self:GetUserGroup()]==true or self:IsUserGroup("donator")
end