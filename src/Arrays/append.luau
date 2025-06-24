--[[
	Adds new elements to the _target_ array from subsequent array arguments in left-to-right order.

	Arguments which are `nil` or None are skipped.

	@mutable target
]]

local Dash = script.Parent.Parent
local None = require(Dash.Symbols.None)
local forEachArgs = require(Dash.Functions.forEachArgs)
local forEach = require(Dash.Tables.forEach)
local insert = table.insert

local function append<T>(target: { T }, ...: { T }?): { T }
	forEachArgs(function(list: { T }?)
		-- TODO (AleksandrSl 29/05/2024): Add wrapper function for this.
		if list == None or list == nil then
			return
		else
			forEach(list, function(value: T)
				insert(target, value)
			end)
		end
	end, ...)
	return target
end

return append
