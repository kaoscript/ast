enum AssignmentOperatorKind { # {{{
	Addition = 1
	BitwiseAnd
	BitwiseOr
	BitwiseXor
	BitwiseLeftShift
	BitwiseRightShift
	Division
	Empty
	EmptyCoalescing
	Equals
	Existential
	LogicalAnd
	LogicalOr
	LogicalXor
	Modulo
	Multiplication
	NonEmpty
	NonExistential
	NullCoalescing
	Quotient
	Return
	Subtraction
} # }}}

enum BinaryOperatorKind { # {{{
	Addition = 1
	Assignment
	BackwardPipeline
	BitwiseAnd
	BitwiseOr
	BitwiseXor
	BitwiseLeftShift
	BitwiseRightShift
	Division
	EmptyCoalescing
	Equality
	ForwardPipeline
	GreaterThan
	GreaterThanOrEqual
	Inequality
	JunctionAnd
	JunctionOr
	JunctionXor
	LessThan
	LessThanOrEqual
	LogicalAnd
	LogicalImply
	LogicalOr
	LogicalXor
	Match
	Mismatch
	Modulo
	Multiplication
	NullCoalescing
	Quotient
	Subtraction
	TypeCasting
	TypeEquality
	TypeInequality
} # }}}

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

enum UnaryOperatorKind { # {{{
	BitwiseNegation = 1
	Constant
	Existential
	Implicit
	LogicalNegation
	Negative
	NonEmpty
	Spread
	TypeFitting
} # }}}

enum UnaryTypeOperatorKind { # {{{
	Constant = 1
	Mutable
	NewInstance
	TypeOf
	ValueOf
} # }}}

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
