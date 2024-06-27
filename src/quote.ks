enum QuoteElementKind { # {{{
	Expression = 1
	Literal
	NewLine
} # }}}

enum ReificationKind { # {{{
	Argument = 1
	Expression
	Join
	Statement
	Write
} # }}}

type QuoteElementData = Range & {
	variant kind: QuoteElementKind {
		Expression {
			expression: Ast(Expression)
			reification: ReificationData?
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
