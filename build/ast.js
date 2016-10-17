// Generated by kaoscript 0.4.0
module.exports = function() {
	var AssignmentOperator = {
		Addition: 1,
		BitwiseAnd: 2,
		BitwiseLeftShift: 3,
		BitwiseOr: 4,
		BitwiseRightShift: 5,
		BitwiseXor: 6,
		Division: 7,
		Equality: 8,
		Existential: 9,
		Modulo: 10,
		Multiplication: 11,
		NullCoalescing: 12,
		Subtraction: 13
	};
	var BinaryOperator = {
		And: 1,
		Addition: 2,
		Assignment: 3,
		BitwiseAnd: 4,
		BitwiseLeftShift: 5,
		BitwiseOr: 6,
		BitwiseRightShift: 7,
		BitwiseXor: 8,
		Division: 9,
		Equality: 10,
		GreaterThan: 11,
		GreaterThanOrEqual: 12,
		Inequality: 13,
		LessThan: 14,
		LessThanOrEqual: 15,
		Modulo: 16,
		Multiplication: 17,
		NullCoalescing: 18,
		Or: 19,
		Subtraction: 20,
		TypeCast: 21,
		TypeCheck: 22
	};
	var ClassModifier = {
		Final: 1
	};
	var FunctionModifier = {
		Async: 1
	};
	var Kind = {
		ArrayBinding: 1,
		ArrayComprehension: 2,
		ArrayExpression: 3,
		ArrayRange: 4,
		AttributeDeclaration: 5,
		AttributeExpression: 6,
		AttributeOperator: 7,
		AwaitExpression: 8,
		BinaryOperator: 9,
		BindingElement: 10,
		Block: 11,
		BreakStatement: 12,
		CallExpression: 13,
		CatchClause: 14,
		ClassDeclaration: 15,
		ClassName: 16,
		CommentBlock: 17,
		CommentLine: 18,
		ContinueStatement: 19,
		CurryExpression: 20,
		DoUntilStatement: 21,
		DoWhileStatement: 22,
		ElseStatement: 23,
		ElseIfStatement: 24,
		EnumDeclaration: 25,
		EnumExpression: 26,
		EnumMember: 27,
		ExportAlias: 28,
		ExportDeclaration: 29,
		ExternDeclaration: 30,
		ExternOrRequireDeclaration: 31,
		FieldDeclaration: 32,
		ForFromStatement: 33,
		ForInStatement: 34,
		ForOfStatement: 35,
		ForRangeStatement: 36,
		FunctionDeclaration: 37,
		FunctionExpression: 38,
		Identifier: 39,
		IfExpression: 40,
		IfStatement: 41,
		ImplementDeclaration: 42,
		ImportDeclaration: 43,
		ImportDeclarator: 44,
		ImportReference: 45,
		ImportSpecifier: 46,
		ImportWildcardSpecifier: 47,
		IncludeDeclaration: 48,
		Literal: 49,
		MemberExpression: 50,
		MemberReference: 51,
		MethodAliasDeclaration: 52,
		MethodDeclaration: 53,
		MethodLinkDeclaration: 54,
		MixinDeclaration: 55,
		Module: 56,
		NumericExpression: 57,
		ObjectBinding: 58,
		ObjectExpression: 59,
		ObjectMember: 60,
		OmittedExpression: 61,
		Parameter: 62,
		PolyadicOperator: 63,
		RegularExpression: 64,
		RequireDeclaration: 65,
		RequireOrExternDeclaration: 66,
		ReturnStatement: 67,
		SurrogateDeclaration: 68,
		SwitchClause: 69,
		SwitchConditionArray: 70,
		SwitchConditionEnum: 71,
		SwitchConditionObject: 72,
		SwitchConditionRange: 73,
		SwitchConditionType: 74,
		SwitchExpression: 75,
		SwitchStatement: 76,
		SwitchTypeCast: 77,
		TemplateExpression: 78,
		TernaryConditionalExpression: 79,
		ThrowStatement: 80,
		TraitDeclaration: 81,
		TryStatement: 82,
		TypeAliasDeclaration: 83,
		TypeReference: 84,
		UnaryExpression: 85,
		UnlessExpression: 86,
		UnlessStatement: 87,
		UntilStatement: 88,
		UnionType: 89,
		VariableDeclaration: 90,
		VariableDeclarator: 91,
		VariableExpression: 92,
		WhileStatement: 93
	};
	var MemberModifier = {
		Private: 2,
		Protected: 3,
		Public: 4,
		Static: 5
	};
	var ParameterModifier = {
		Member: 1,
		Rest: 2
	};
	var ScopeModifier = {
		Argument: 1,
		Null: 2,
		This: 3
	};
	var UnaryOperator = {
		BitwiseNot: 1,
		DecrementPostfix: 2,
		DecrementPrefix: 3,
		Existential: 4,
		IncrementPostfix: 5,
		IncrementPrefix: 6,
		Negation: 7,
		Negative: 8,
		New: 9,
		Spread: 10
	};
	var VariableModifier = {
		Const: 1,
		Let: 2
	};
	return {
		AssignmentOperator: AssignmentOperator,
		BinaryOperator: BinaryOperator,
		ClassModifier: ClassModifier,
		FunctionModifier: FunctionModifier,
		Kind: Kind,
		MemberModifier: MemberModifier,
		ParameterModifier: ParameterModifier,
		ScopeModifier: ScopeModifier,
		UnaryOperator: UnaryOperator,
		VariableModifier: VariableModifier
	};
}