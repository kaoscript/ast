enum ScopeKind {
	Argument = 1
	This
}

type ScopeData = {
	kind: ScopeKind
	value: Ast(Argument, Identifier, ObjectExpression)?
}
