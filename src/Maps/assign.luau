--[[
	Adds new values to _target_ from subsequent Table arguments in left-to-right order.

	The None symbol can be used to remove existing elements in the target.

	@param ... any number of other tables
	@example
	local characters = {
		Frodo = {
			name = "Frodo Baggins",
			team = "blue"
		},
		Boromir = {
			score = 5
		}
	}
	local otherCharacters = {
		Frodo = {
			team = "red",
			score = 10
		},
		Bilbo = {
			team = "yellow",
		},
		Boromir = {
			score = {1, 2, 3}
		}
	}
	local result = assign(characters, otherCharacters)
	print(result) --> {
		Frodo = {
			team = "red",
			score = 10
		},
		Bilbo = {
			team = "yellow"
		},
		Boromir = {
			score = {1, 2, 3}
		}
	}
]]
local Dash = script.Parent.Parent
local None = require(Dash.Symbols.None)
local Types = require(Dash.Types)
local forEach = require(Dash.Tables.forEach)
local forEachArgs = require(Dash.Functions.forEachArgs)

local function assign<Key, Value>(target: Types.Map<Key, Value>, ...: Types.Map<Key, Value>): Types.Map<Key, Value>
	-- Iterate through the varags in order
	forEachArgs(function(input: Types.Map<Key, Value>?)
		-- Ignore items which are not defined
		if input == nil or input == None then
			return
		else
			-- Iterate through each key of the input and assign to target at the same key
			forEach(input, function(value, key)
				if value == None then
					target[key] = nil
				else
					target[key] = value
				end
			end)
		end
	end, ...)
	return target
end

return assign
