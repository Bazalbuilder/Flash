local Types = require(script.Types)

export type Array<Value> = Types.Array<Value>
export type Args<Value> = Types.Args<Value>
export type Map<Key, Value> = Types.Map<Key, Value>
export type Set<Key> = Types.Set<Key>
export type Table = Types.Table
export type Class<Object> = Types.Class<Object>
export type AnyFunction = Types.AnyFunction

local Dash = {
	Types = require(script.Types),

	append = require(script.Arrays.append),
	findIndex = require(script.Arrays.findIndex),
	flat = require(script.Arrays.flat),
	last = require(script.Arrays.last),
	mapFirst = require(script.Arrays.mapFirst),
	mapLast = require(script.Arrays.mapLast),
	product = require(script.Arrays.product),
	reverse = require(script.Arrays.reverse),
	slice = require(script.Arrays.slice),
	sum = require(script.Arrays.sum),
	zip = require(script.Arrays.zip),

	class = require(script.Classes.class),
	Error = require(script.Classes.Error),
	Symbol = require(script.Classes.Symbol),

	assertEqual = require(script.Debugging.assertEqual),
	cycles = require(script.Debugging.cycles),
	format = require(script.Debugging.format),
	formatValue = require(script.Debugging.formatValue),
	pretty = require(script.Debugging.pretty),

	chain = require(script.Functions.chain),
	compose = require(script.Functions.compose),
	forEachArgs = require(script.Functions.forEachArgs),
	identity = require(script.Functions.identity),
	isCallable = require(script.Functions.isCallable),
	noop = require(script.Functions.noop),

	assign = require(script.Maps.assign),
	freeze = require(script.Maps.freeze),
	getOrSet = require(script.Maps.getOrSet),
	join = require(script.Maps.join),
	joinDeep = require(script.Maps.joinDeep),

	endsWith = require(script.Strings.endsWith),
	isLowercase = require(script.Strings.isLowercase),
	isUppercase = require(script.Strings.isUppercase),
	leftPad = require(script.Strings.leftPad),
	rightPad = require(script.Strings.rightPad),
	splitOn = require(script.Strings.splitOn),
	startsWith = require(script.Strings.startsWith),
	trim = require(script.Strings.trim),

	None = require(script.Symbols.None),

	all = require(script.Tables.all),
	collect = require(script.Tables.collect),
	collectArray = require(script.Tables.collectArray),
	collectSet = require(script.Tables.collectSet),
	copy = require(script.Tables.copy),
	count = require(script.Tables.count),
	filter = require(script.Tables.filter),
	find = require(script.Tables.find),
	forEach = require(script.Tables.forEach),
	frequencies = require(script.Tables.frequencies),
	groupBy = require(script.Tables.groupBy),
	includes = require(script.Tables.includes),
	iterable = require(script.Tables.iterable),
	iterator = require(script.Tables.iterator),
	keyBy = require(script.Tables.keyBy),
	keys = require(script.Tables.keys),
	map = require(script.Tables.map),
	mapOne = require(script.Tables.mapOne),
	max = require(script.Tables.max),
	min = require(script.Tables.min),
	omit = require(script.Tables.omit),
	pick = require(script.Tables.pick),
	reduce = require(script.Tables.reduce),
	shallowEqual = require(script.Tables.shallowEqual),
	some = require(script.Tables.some),
	values = require(script.Tables.values),
}

return Dash.freeze("Dash", Dash, true)
