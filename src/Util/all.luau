--[[
    Iterates through all elements of a table, and checks if the values in table _input_ is true or false.

    Any value that is falsy will result in the whole table being returned as false.
]]

local Dash = script.Parent
local Types = require(Dash.Types)

type AllHandler = (any, any) -> boolean

local defaultHandler = function(value)
	return value
end

local function all(input: Types.Table, handler: AllHandler?): boolean
	local allHandler = handler or defaultHandler
	for key, value in input do
		if not allHandler(value, key) then
			return false
		end
	end
	return true
end

return all
