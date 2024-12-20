enum QuoteElementKind { # {{{
	Escape = 1
	Expression
	Literal
	NewLine
} # }}}

enum ReificationKind { # {{{
	Argument = 1
	Block
	Code
	Identifier
	Join
	Value
} # }}}

type QuoteElementData = Range & {
	variant kind: QuoteElementKind {
		Escape {
			value: String
		}
		Expression {
			expression: Ast(Expression)
			reifications: ReificationData[]
			separator: Ast(Expression)?
		}
		Literal {
			value: String
		}
	}
}

type ReificationData = Range & {
	kind: ReificationKind
}
