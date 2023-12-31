enum ModifierKind<Number;1> {
	Abstract
	Alias
	Ascending
	Async
	Assist
	AutoEvaluate
	Autofill
	Ballpark
	Computed
	Constant
	Declarative
	Default
	Descending
	Disabled
	Dynamic
	Exclusion
	Existential
	Final
	Forced
	Internal
	LateInit
	LazyInit
	MultiLine
	Mutable
	Named
	NameOnly
	NonEmpty
	NonNullable
	Nullable
	Ordinal
	Override
	Overwrite
	PositionOnly
	Private
	Protected
	Public
	Required
	Rest
	Sealed
	Spread
	Static
	System
	ThisAlias
	Wildcard
}

type ModifierData = Range & {
	variant kind: ModifierKind {
		Rest {
			arity: {
				min: Number
				max: Number
			}?
		}
	}
}
