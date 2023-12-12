/**
 * index.ks
 * Version 0.9.0
 * September 13th, 2016
 *
 * Copyright (c) 2016 Baptiste Augrain
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/
type Position = {
	line: Number
	column: Number
}

type Range = {
	start: Position
	end: Position
}

type VersionData = Range & {
	major: String
	minor: String
	patch: String
}

include {
	'./macro.ks'
	'./modifier.ks'
	'./node.ks'
	'./operator.ks'
	'./scope.ks'
}

export *
