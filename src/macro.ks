enum MacroElementKind { # {{{
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

type MacroElementData = Range & {
	variant kind: MacroElementKind {
		Expression {
			expression: NodeData(Expression)
			reification: ReificationData?
			separator: NodeData(Expression)?
		}
		Literal {
			value: String
		}
	}
}

type ReificationData = Range & {
	kind: ReificationKind
}
