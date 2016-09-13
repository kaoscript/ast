module.exports = function(Array, __ks_Array, Class, Function, __ks_Function, Object, __ks_Object, Type) {
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
		Subtraction: 12
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
		Existential: 11,
		GreaterThan: 12,
		GreaterThanOrEqual: 13,
		Inequality: 14,
		LessThan: 15,
		LessThanOrEqual: 16,
		Modulo: 17,
		Multiplication: 18,
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
		FieldDeclaration: 31,
		ForFromStatement: 32,
		ForInStatement: 33,
		ForOfStatement: 34,
		ForRangeStatement: 35,
		FunctionDeclaration: 36,
		FunctionExpression: 37,
		Identifier: 38,
		IfExpression: 39,
		IfStatement: 40,
		ImplementDeclaration: 41,
		ImportDeclaration: 42,
		ImportDeclarator: 43,
		ImportReference: 44,
		ImportSpecifier: 45,
		ImportWildcardSpecifier: 46,
		Literal: 47,
		MemberExpression: 48,
		MemberReference: 49,
		MethodAliasDeclaration: 50,
		MethodDeclaration: 51,
		MethodLinkDeclaration: 52,
		MixinDeclaration: 53,
		Module: 54,
		NumericExpression: 55,
		ObjectBinding: 56,
		ObjectExpression: 57,
		ObjectMember: 58,
		OmittedExpression: 59,
		Parameter: 60,
		PolyadicOperator: 61,
		RegularExpression: 62,
		RequireDeclaration: 63,
		ReturnStatement: 64,
		SurrogateDeclaration: 65,
		SwitchClause: 66,
		SwitchConditionArray: 67,
		SwitchConditionEnum: 68,
		SwitchConditionObject: 69,
		SwitchConditionRange: 70,
		SwitchConditionType: 71,
		SwitchExpression: 72,
		SwitchStatement: 73,
		SwitchTypeCast: 74,
		TemplateExpression: 75,
		TernaryConditionalExpression: 76,
		ThrowStatement: 77,
		TraitDeclaration: 78,
		TryStatement: 79,
		TypeAliasDeclaration: 80,
		TypeReference: 81,
		UnaryExpression: 82,
		UnlessExpression: 83,
		UnlessStatement: 84,
		UntilStatement: 85,
		UnionType: 86,
		VariableDeclaration: 87,
		VariableDeclarator: 88,
		VariableExpression: 89,
		WhileStatement: 90
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