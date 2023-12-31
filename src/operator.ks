bitmask OperatorAttribute { # {{{
	Nil

	Assignable
	Binary
	Comparable
	Polyadic
	RTL
	Unary
} # }}}

enum OperatorKind<Number;1> {
	Addition			= (.Binary + .Polyadic	+ .Assignable,			13)
	Assignment			= (.Binary,										3)
	BackwardPipeline	= (.Binary + .RTL,								20)
	BitwiseAnd			= (.Binary + .Polyadic	+ .Assignable,			12)
	BitwiseNegation		= (										.Unary,	0)
	BitwiseOr			= (.Binary + .Polyadic	+ .Assignable,			12)
	BitwiseXor			= (.Binary + .Polyadic	+ .Assignable,			12)
	BitwiseLeftShift	= (.Binary + .Polyadic	+ .Assignable,			12)
	BitwiseRightShift	= (.Binary + .Polyadic	+ .Assignable,			12)
	Constant			= (										.Unary,	0)
	Division			= (.Binary + .Polyadic	+ .Assignable,			14)
	Empty				= (.Binary				+ .Assignable,			0)
	EmptyCoalescing		= (.Binary + .Polyadic	+ .Assignable,			15)
	Equality			= (.Binary + .Comparable,						8)
	Equals				= (.Binary				+ .Assignable,			0)
	EuclideanDivision	= (.Binary,										14)
	Existential			= (.Binary				+ .Assignable +	.Unary,	0)
	Finite				= (.Binary				+ .Assignable +	.Unary,	0)
	ForwardPipeline		= (.Binary,										16)
	GreaterThan			= (.Binary + .Comparable,						8)
	GreaterThanOrEqual	= (.Binary + .Comparable,						8)
	Implicit			= (										.Unary,	0)
	Inequality			= (.Binary + .Comparable,						8)
	IntegerDivision		= (.Binary + .Polyadic	+ .Assignable,			14)
	JunctionAnd			= (.Binary,										0)
	JunctionOr			= (.Binary,										0)
	JunctionXor			= (.Binary,										0)
	Length				= (										.Unary,	0)
	LessThan			= (.Binary + .Comparable,						8)
	LessThanOrEqual		= (.Binary + .Comparable,						8)
	LogicalAnd			= (.Binary + .Polyadic	+ .Assignable,			6)
	LogicalImply		= (.Binary + .Polyadic	+ .Assignable,			5)
	LogicalNegation		= (										.Unary,	0)
	LogicalOr			= (.Binary + .Polyadic	+ .Assignable,			5)
	LogicalXor			= (.Binary + .Polyadic	+ .Assignable,			5)
	Match				= (.Binary,										8)
	Mismatch			= (.Binary,										8)
	Modulus				= (.Binary + .Polyadic	+ .Assignable,			14)
	Multiplication		= (.Binary + .Polyadic	+ .Assignable,			14)
	Negative			= (										.Unary,	0)
	NonEmpty			= (.Binary				+ .Assignable +	.Unary,	0)
	NonExistential		= (.Binary				+ .Assignable,			0)
	NonFinite			= (.Binary				+ .Assignable,			0)
	NonFiniteCoalescing	= (.Binary + .Polyadic	+ .Assignable,			15)
	NullCoalescing		= (.Binary + .Polyadic	+ .Assignable,			15)
	Power				= (.Binary + .Polyadic	+ .Assignable,			14)
	Remainder			= (.Binary + .Polyadic	+ .Assignable,			14)
	Return				= (.Binary				+ .Assignable,			0)
	Spread				= (										.Unary,	0)
	Subtraction			= (.Binary + .Polyadic	+ .Assignable,			13)
	TypeAssertion		= (.Binary,										0)
	TypeCasting			= (.Binary,										0)
	TypeEquality		= (.Binary,										8)
	TypeFitting			= (										.Unary,	0)
	TypeInequality		= (.Binary,										8)
	TypeSignalment		= (.Binary,										0)
	VariantNo			= (.Binary				+ .Assignable,			0)
	VariantNoCoalescing	= (.Binary + .Polyadic	+ .Assignable,			15)
	VariantYes			= (.Binary				+ .Assignable +	.Unary,	0)

	const {
		attribute: OperatorAttribute
		precedence: Number
	}
}

enum IterationKind { # {{{
	Array
	From
	Object
	Range
} # }}}

enum RestrictiveOperatorKind { # {{{
	If
	Unless
} # }}}

enum UnaryTypeOperatorKind<Number;1> { # {{{
	Constant
	Mutable
	NewInstance
	TypeOf
	ValueOf
} # }}}

type AssignmentOperatorKind = OperatorKind(attribute ~~ .Assignable)
type BinaryOperatorKind = OperatorKind(attribute ~~ .Binary)
type UnaryOperatorKind = OperatorKind(attribute ~~ .Unary)

type BinaryOperatorData = Range & {
	variant kind: BinaryOperatorKind {
		Assignment {
			assignment: AssignmentOperatorKind
		}
	}
	modifiers: ModifierData[]?
}

type IterationData = Range & {
	variant kind: IterationKind {
		Array {
			expression: NodeData(Expression)
			value: NodeData(Identifier, ArrayBinding, ObjectBinding)?
			type:  NodeData(Type)?
			index: NodeData(Identifier)?
			from: NodeData(Expression)?
			to: NodeData(Expression)?
			step: NodeData(Expression)?
			split: NodeData(Expression)?
		}
		From {
			variable: NodeData(Identifier)
			from: NodeData(Expression)
			to: NodeData(Expression)
			step: NodeData(Expression)?
		}
		Object {
			expression: NodeData(Expression)
			value: NodeData(Identifier, ArrayBinding, ObjectBinding)?
			type:  NodeData(Type)?
			key: NodeData(Identifier)?
		}
		Range {
			value: NodeData(Identifier)
			index: NodeData(Identifier)?
			from: NodeData(Expression)
			to: NodeData(Expression)
			step: NodeData(Expression)?
		}
	}
	modifiers: ModifierData[]
	until: NodeData(Expression)?
	while: NodeData(Expression)?
	when: NodeData(Expression)?
}

type RestrictiveOperatorData = Range & {
	kind: RestrictiveOperatorKind
	modifiers: ModifierData[]?
}

type UnaryOperatorData = Range & {
	kind: UnaryOperatorKind
}

type UnaryTypeOperatorData = Range & {
	kind: UnaryTypeOperatorKind
}
