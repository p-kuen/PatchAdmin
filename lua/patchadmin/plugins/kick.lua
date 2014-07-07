local Plugin = {
	
	name = "Kick",
	command = "kick",
	alias = {},
	args_required = {},
	args_optional = { "PLAYER_1", "reason" }

}

function Plugin:Call( ply, args )

	local pl = args["PLAYER_1"] or ply

	local reason = args["reason"] or "No reason specified"

	pl:Kick( "Kicked by " .. ply:Nick() .. "! (" .. reason .. ")" )

end

sv_PAdmin.AddPlugin( Plugin )
