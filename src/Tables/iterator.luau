--[[
	Iterates using a `pairs` iterator for an _input_ Table if zero length, otherwise an `ipairs`
	iterator for an array.

	If _input_ is a function it is used as a stateful iterator instead.

	This function can be used to build behaviour that iterates over both arrays and Maps.

	@see Dash.iterable if you want to iterate over a Table with numeric but un-ordered keys.
    @deprecated use generalized iteration instead.
]]

local Dash = script.Parent.Parent
local Types = require(Dash.Types)

local function iterator(input: Types.Table | Types.AnyFunction)
	if typeof(input) == "function" then
		return input
	elseif typeof(input) == "table" then
		if #input > 0 then
			return ipairs(input)
		else
			return pairs(input)
		end
	else
		return nil
	end
end

return iterator
