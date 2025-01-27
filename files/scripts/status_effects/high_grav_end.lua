local entity_id = GetUpdatedEntityID()
local player_id = EntityGetParent( entity_id )
local x, y = EntityGetTransform( entity_id )

if ( player_id ~= NULL_ENTITY ) and ( entity_id ~= player_id ) then
	local c = EntityGetAllChildren( player_id )
	GamePrint("Normal Grav")
	if ( c ~= nil ) then
		for i,v in ipairs( c ) do
			edit_component( target_id, "CharacterPlatformingComponent", function(v,vars)
				local gravity = ComponentGetValue2( v, "pixel_gravity" ) / 3
				ComponentSetValue2( v, "pixel_gravity", gravity )
			end)
		end
	end
end