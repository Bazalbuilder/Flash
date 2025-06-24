--[[
    Iterates through all elements of the _input_ Table.

    Calls the _handler_ for each entry and returns `false` if the handler returns falsy for any
    element which it is called with. Otherwise, all elements were truthy so return `true`.

    If the handler is not provided, use the truthiness of the values in the table.
]]

local Dash = script.Parent.Parent
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
