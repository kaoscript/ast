enum ScopeKind {
	Argument = 1
	This
}

type ScopeData = {
	kind: ScopeKind
	value: NodeData(Identifier, ObjectExpression)?
}
