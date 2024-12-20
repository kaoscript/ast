enum AstKind { # {{{
	AccessorDeclaration = 1
	ArrayBinding
	ArrayComprehension
	ArrayExpression
	ArrayRange
	ArrayType
	AttributeDeclaration
	AttributeExpression
	AttributeOperation
	AwaitExpression
	BinaryExpression
	BindingElement
	BitmaskDeclaration
	BitmaskValue
	Block
	BlockStatement
	BreakStatement
	CallExpression
	CatchClause
	ClassDeclaration
	CommentBlock
	CommentLine
	ComparisonExpression
	ComputedPropertyName
	ContinueStatement
	CurryExpression
	DeclarationSpecifier
	DiscloseDeclaration
	DisruptiveExpression
	DoUntilStatement
	DoWhileStatement
	EnumDeclaration
	EnumValue
	ExclusionType
	ExportDeclaration
	ExternDeclaration
	ExternOrImportDeclaration
	ExternOrRequireDeclaration
	ExpressionStatement
	FallthroughStatement
	FieldDeclaration
	ForStatement
	FunctionDeclaration
	FunctionExpression
	FusionType
	GroupSpecifier
	Identifier
	IfExpression
	IfStatement
	ImplementDeclaration
	ImportDeclaration
	ImportDeclarator
	IncludeAgainDeclaration
	IncludeDeclaration
	IncludeDeclarator
	JunctionExpression
	LambdaExpression
	Literal
	MacroDeclaration
	MatchClause
	MatchConditionArray
	MatchConditionObject
	MatchConditionRange
	MatchConditionType
	MatchExpression
	MatchStatement
	MemberExpression
	MethodDeclaration
	MixinDeclaration
	Module
	MutatorDeclaration
	NamedArgument
	NamedSpecifier
	NamespaceDeclaration
	NumericExpression
	ObjectBinding
	ObjectComprehension
	ObjectExpression
	ObjectMember
	ObjectType
	OmittedExpression
	Operator
	Parameter
	PassStatement
	PlaceholderArgument
	PolyadicExpression
	PositionalArgument
	PropertiesSpecifier
	PropertyDeclaration
	PropertyType
	ProxyDeclaration
	ProxyGroupDeclaration
	QuoteExpression
	Reference
	RegularExpression
	RepeatStatement
	RequireDeclaration
	RequireOrExternDeclaration
	RequireOrImportDeclaration
	RestrictiveExpression
	ReturnStatement
	RollingExpression
	SemtimeStatement
	SequenceExpression
	SetStatement
	ShebangDeclaration
	ShorthandProperty
	SpreadExpression
	StatementList
	StructDeclaration
	SurrogateDeclaration
	SyntimeCallExpression
	SyntimeDeclaration
	SyntimeStatement
	TaggedTemplateExpression
	TemplateExpression
	ThisExpression
	ThrowStatement
	TopicReference
	TraitDeclaration
	TryExpression
	TryStatement
	TupleDeclaration
	TupleField
	TypeAliasDeclaration
	TypeList
	TypeParameter
	TypeReference
	TypedExpression
	TypedSpecifier
	UnaryExpression
	UnaryTypeExpression
	UnlessStatement
	UntilStatement
	UnionType
	VariableDeclaration
	VariableDeclarator
	VariableStatement
	VariantDeclaration
	VariantField
	VariantType
	WhileStatement
	WithStatement

	Argument = NamedArgument | PlaceholderArgument | PositionalArgument

	ClassMember = FieldDeclaration | MethodDeclaration | PropertyDeclaration | ProxyDeclaration | ProxyGroupDeclaration | SyntimeStatement

	Expression = ArrayBinding | ArrayComprehension | ArrayExpression | ArrayRange | AwaitExpression | BinaryExpression | CallExpression | ComparisonExpression | CurryExpression | DisruptiveExpression | FunctionExpression | Identifier | IfExpression | JunctionExpression | LambdaExpression | Literal | MatchExpression | MemberExpression | NamedArgument | NumericExpression | ObjectBinding | ObjectComprehension | ObjectExpression | ObjectMember | Operator | PlaceholderArgument | PolyadicExpression | PositionalArgument | QuoteExpression | Reference | RegularExpression | RestrictiveExpression | RollingExpression | SequenceExpression | ShorthandProperty | SpreadExpression | SyntimeCallExpression | TaggedTemplateExpression | TemplateExpression | ThisExpression | TopicReference | TryExpression | TypedExpression | UnaryExpression

	Statement = BitmaskDeclaration | BlockStatement | BreakStatement | ClassDeclaration | ContinueStatement | DiscloseDeclaration | DoUntilStatement | DoWhileStatement | EnumDeclaration | ExportDeclaration | ExternDeclaration | ExternOrImportDeclaration | ExternOrRequireDeclaration | ExpressionStatement | FallthroughStatement | ForStatement | FunctionDeclaration | IfStatement | ImplementDeclaration | ImportDeclaration | IncludeAgainDeclaration | IncludeDeclaration | MacroDeclaration | MatchStatement | NamespaceDeclaration | PassStatement | RepeatStatement | RequireDeclaration | RequireOrExternDeclaration | RequireOrImportDeclaration | ReturnStatement | SemtimeStatement | SetStatement | StructDeclaration | SyntimeDeclaration | SyntimeStatement | ThrowStatement | TraitDeclaration | TryStatement | TupleDeclaration | TypeAliasDeclaration | UnlessStatement | UntilStatement | VariableStatement | VariantDeclaration | WhileStatement | WithStatement

	Type = ArrayType | ExclusionType| FunctionExpression | FusionType | ObjectType | TypeReference | UnaryTypeExpression | UnionType | VariantType

	SpecialDeclaration = BitmaskDeclaration | ClassDeclaration | EnumDeclaration | FunctionDeclaration | MacroDeclaration | NamespaceDeclaration | StructDeclaration | SyntimeDeclaration | TupleDeclaration | TypeAliasDeclaration | VariableStatement

	DescriptiveType = SpecialDeclaration | ExportDeclaration | VariableDeclarator
} # }}}

type Ast = Range & {
	variant kind: AstKind {
		AccessorDeclaration {
			body: Ast(Block, Expression)?
		}
		Argument {
			modifiers: ModifierData[]
			name: Ast(Identifier)?
			value: Ast(Expression)
		}
		ArrayBinding {
			elements: Ast(BindingElement)[]
			alias: Ast(Identifier)?
		}
		ArrayComprehension {
			modifiers: ModifierData[]
			value: Ast(Expression)
			iteration: IterationData
		}
		ArrayExpression {
			modifiers: ModifierData[]
			values: Ast(Expression)[]
		}
		ArrayRange {
			from: Ast(Expression)?
			then: Ast(Expression)?
			til: Ast(Expression)?
			to: Ast(Expression)?
			by: Ast(Expression)?
		}
		ArrayType {
			modifiers: ModifierData[]
			properties: Ast(PropertyType)[]
			rest: Ast(PropertyType)?
		}
		AttributeDeclaration {
			declaration: Ast(Identifier, AttributeExpression, AttributeOperation)
		}
		AttributeExpression {
			name: Ast(Identifier)
			arguments: Ast(Identifier, AttributeOperation, AttributeExpression)[]
		}
		AttributeOperation {
			name: Ast(Identifier)
			value: Ast(Literal)
		}
		AwaitExpression {
			modifiers: ModifierData[]
			variables: Ast(VariableDeclarator)[]?
			operation: Ast(Expression)?
		}
		BinaryExpression {
			modifiers: ModifierData[]
			operator: BinaryOperatorData
			left: Ast(Expression)?
			right: Ast(Expression, Type)?
		}
		BindingElement {
			attributes: Ast(AttributeDeclaration)[]?
			modifiers: ModifierData[]
			external: Ast(Identifier)?
			internal: Ast(Identifier, ArrayBinding, ObjectBinding, ThisExpression)?
			type: Ast(Type)?
			operator: BinaryOperatorData(Assignment)?
			defaultValue: Ast(Expression)?
		}
		BitmaskDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			type: Ast(Identifier)?
			members: Ast(BitmaskValue, MethodDeclaration)[]
		}
		BitmaskValue {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			value: Ast(Expression)?
		}
		Block {
			attributes: Ast(AttributeDeclaration)[]
			statements: Ast(Statement)[]
		}
		BlockStatement {
			attributes: Ast(AttributeDeclaration)[]
			label: Ast(Identifier)
			body: Ast(Block)
		}
		BreakStatement {
			attributes: Ast(AttributeDeclaration)[]
			label: Ast(Identifier)?
		}
		CallExpression {
			modifiers: ModifierData[]
			scope: ScopeData
			callee: Ast(Expression)
			arguments: Ast(Argument, Expression)[]
		}
		CatchClause {
			body: Ast(Block)
			binding: Ast(Identifier)?
			type: Ast(Identifier)?
		}
		ClassDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			typeParameters: Ast(TypeParameter)[]?
			version: VersionData?
			extends: Ast(Identifier, MemberExpression)?
			implements: Ast(Identifier, MemberExpression)[]?
			members: Ast(ClassMember)[]
		}
		ComparisonExpression {
			modifiers: ModifierData[]
			values: Array<Ast(Expression) | BinaryOperatorData>
		}
		ComputedPropertyName {
			expression: Ast(Expression)
		}
		ContinueStatement {
			attributes: Ast(AttributeDeclaration)[]
			label: Ast(Identifier)?
		}
		CurryExpression {
			modifiers: ModifierData[]
			scope: ScopeData
			callee: Ast(Expression)
			arguments: Ast(Argument, Expression)[]
		}
		DeclarationSpecifier {
			declaration: Ast(SpecialDeclaration)
		}
		DiscloseDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			name: Ast(Identifier)
			typeParameters: Ast(TypeParameter)[]?
			members: Ast(ClassMember)[]
		}
		DisruptiveExpression {
			operator: RestrictiveOperatorData
			condition: Ast(Expression)
			mainExpression: Ast(Expression)
			disruptedExpression: Ast(Expression)
		}
		DoUntilStatement {
			attributes: Ast(AttributeDeclaration)[]
			condition: Ast(Expression)
			body: Ast(Block)
		}
		DoWhileStatement {
			attributes: Ast(AttributeDeclaration)[]
			condition: Ast(Expression)
			body: Ast(Block)
		}
		EnumDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			type: Ast(TypeReference)?
			initial: Ast(Expression)?
			step: Ast(Expression)?
			members: Ast(EnumValue, FieldDeclaration, MethodDeclaration)[]
		}
		EnumValue {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			value: Ast(Expression)?
			arguments: Ast(Argument, Expression)[]?
		}
		ExclusionType {
			types: Ast(Type)[]
		}
		ExportDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(DeclarationSpecifier, GroupSpecifier, NamedSpecifier, PropertiesSpecifier)[]
		}
		ExpressionStatement {
			attributes: Ast(AttributeDeclaration)[]
			expression: Ast(Expression)
		}
		ExternDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(DescriptiveType)[]
		}
		ExternOrImportDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(ImportDeclarator)[]
		}
		ExternOrRequireDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(DescriptiveType)[]
		}
		FallthroughStatement {
			attributes: Ast(AttributeDeclaration)[]
		}
		FieldDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			type: Ast(Type)?
			value: Ast(Expression)?
		}
		ForStatement {
			attributes: Ast(AttributeDeclaration)[]
			iterations: IterationData[]
			body: Ast(Block, ExpressionStatement)
			else: Ast(Block)?
		}
		FunctionDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			typeParameters: Ast(TypeParameter)[]?
			parameters: Ast(Parameter)[]?
			type: Ast(Type)?
			throws: Ast(Identifier)[]
			body: Ast(Block, Expression, IfStatement, UnlessStatement)?
		}
		FunctionExpression {
			modifiers: ModifierData[]
			parameters: Ast(Parameter)[]?
			type: Ast(Type)?
			throws: Ast(Identifier)[]
			body: Ast(Block, Expression, IfStatement, UnlessStatement)?
		}
		FusionType {
			types: Ast(Type)[]
		}
		GroupSpecifier {
			modifiers: ModifierData[]
			elements: Ast(NamedSpecifier, TypedSpecifier)[]
			type: Ast(DescriptiveType)?
		}
		Identifier {
			modifiers: ModifierData[]
			name: String
		}
		IfExpression {
			attributes: Ast(AttributeDeclaration)[]
			condition: Ast(Expression)?
			declaration: Ast(VariableDeclaration)?
			whenTrue: Ast(Block, SetStatement)
			whenFalse: Ast(Block, IfExpression, SetStatement)
		}
		IfStatement {
			attributes: Ast(AttributeDeclaration)[]
			condition: Ast(Expression)?
			declarations: Ast(VariableDeclaration, Expression)[][]?
			whenTrue: Ast(Block, BreakStatement, ContinueStatement, ExpressionStatement, ReturnStatement, SetStatement, ThrowStatement)
			whenFalse: Ast(Block, IfStatement)?
		}
		ImplementDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			variable: Ast(Identifier, MemberExpression)
			interface: Ast(Identifier, MemberExpression)?
			properties: Ast(ClassMember)[]
		}
		ImportDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(ImportDeclarator)[]
		}
		ImportDeclarator {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			source: Ast(Literal)
			arguments: Ast(NamedArgument, PositionalArgument)[]?
			type: Ast(DescriptiveType, TypeList)?
			specifiers: Ast(GroupSpecifier, NamedSpecifier)[]
		}
		IncludeAgainDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(IncludeDeclarator)[]
		}
		IncludeDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(IncludeDeclarator)[]
		}
		IncludeDeclarator {
			attributes: Ast(AttributeDeclaration)[]
			file: String
		}
		JunctionExpression {
			modifiers: ModifierData[]
			operator: BinaryOperatorData
			operands: Ast(Expression, Type)[]
		}
		LambdaExpression {
			modifiers: ModifierData[]
			parameters: Ast(Parameter)[]?
			type: Ast(Type)?
			throws: Ast(Identifier)[]
			body: Ast(Block, Expression)
		}
		Literal {
			modifiers: ModifierData[]
			value: String
		}
		MacroDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			parameters: Ast(Parameter)[]
			body: Ast(Block, Expression)
		}
		MatchClause {
			conditions: Ast(Expression, MatchConditionArray, MatchConditionObject, MatchConditionRange, MatchConditionType)[]
			binding: Ast(VariableDeclarator, ArrayBinding, ObjectBinding)?
			filter: Ast(Expression)?
			body: Ast(Block, Statement)
		}
		MatchConditionArray {
			values: Ast(Expression, MatchConditionRange, OmittedExpression)[]
		}
		MatchConditionObject {
			properties: Ast(ObjectMember)[]
		}
		MatchConditionRange {
			from: Ast(Expression)?
			then: Ast(Expression)?
			til: Ast(Expression)?
			to: Ast(Expression)?
		}
		MatchConditionType {
			type: Ast(Type)
		}
		MatchExpression {
			expression: Ast(Expression)
			clauses: Ast(MatchClause)[]
		}
		MatchStatement {
			attributes: Ast(AttributeDeclaration)[]
			expression: Ast(Expression)?
			declaration: Ast(VariableDeclaration)?
			clauses: Ast(MatchClause)[]
		}
		MemberExpression {
			modifiers: ModifierData[]
			object: Ast(Expression)?
			property: Ast(Expression)
		}
		MethodDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			typeParameters: Ast(TypeParameter)[]?
			parameters: Ast(Parameter)[]
			type: Ast(Type)?
			throws: Ast(Identifier)[]
			body: Ast(Block, Expression, IfStatement, UnlessStatement)?
		}
		Module {
			attributes: Ast(AttributeDeclaration)[]
			body: Ast(Statement, ShebangDeclaration)[]
		}
		MutatorDeclaration {
			body: Ast(Block, Expression)?
		}
		NamedArgument {
			modifiers: ModifierData[]
			name: Ast(Identifier)
			value: Ast(Expression, PlaceholderArgument)
		}
		NamedSpecifier {
			modifiers: ModifierData[]
			internal: Ast(Identifier, MemberExpression, ArrayBinding, ObjectBinding)
			external: Ast(Identifier)?
		}
		NamespaceDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			statements: Ast(Statement, DescriptiveType, ExportDeclaration, ExternDeclaration)[]
		}
		NumericExpression {
			modifiers: ModifierData[]
			value: Number
			radix: Number
		}
		ObjectBinding {
			elements: Ast(BindingElement)[]
			alias: Ast(Identifier)?
		}
		ObjectComprehension {
			modifiers: ModifierData[]
			name: Ast(ComputedPropertyName, TemplateExpression)
			value: Ast(Expression)
			iteration: IterationData
		}
		ObjectExpression {
			modifiers: ModifierData[]
			attributes: Ast(AttributeDeclaration)[]
			properties: Ast(Expression)[]
		}
		ObjectMember {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier, ComputedPropertyName, Literal, TemplateExpression)?
			type: Ast(Type)?
			value: Ast(Expression, MatchConditionRange)?
		}
		ObjectType {
			modifiers: ModifierData[]
			properties: Ast(PropertyType)[]
			rest: Ast(PropertyType)?
		}
		OmittedExpression {
			modifiers: ModifierData[]
		}
		Operator {
			operator: BinaryOperatorData
		}
		PassStatement {
			attributes: Ast(AttributeDeclaration)[]
		}
		Parameter {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			external: Ast(Identifier)?
			internal: Ast(Identifier, ArrayBinding, ObjectBinding, ThisExpression)?
			type: Ast(Type)?
			operator: BinaryOperatorData(Assignment)?
			defaultValue: Ast(Expression)?
		}
		PlaceholderArgument {
			modifiers: ModifierData[]
			index: Ast(NumericExpression)?
		}
		PolyadicExpression {
			modifiers: ModifierData[]
			operator: BinaryOperatorData
			operands: Ast(Expression)[]
		}
		PositionalArgument {
			modifiers: ModifierData[]
			value: Ast(Expression)
		}
		PropertiesSpecifier {
			modifiers: ModifierData[]
			object: Ast(Identifier, MemberExpression)
			properties: Ast(NamedSpecifier)[]
		}
		PropertyDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			type: Ast(Type)?
			defaultValue: Ast(Expression)?
			accessor: Ast(AccessorDeclaration)?
			mutator: Ast(MutatorDeclaration)?
		}
		PropertyType {
			modifiers: ModifierData[]
			name: Ast(Identifier)?
			type: Ast(Type)?
		}
		ProxyDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			internal: Ast(Identifier)
			external: Ast(Expression)
		}
		ProxyGroupDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			recipient: Ast(Expression)
			elements: Ast(ProxyDeclaration)[]
		}
		QuoteExpression {
			attributes: Ast(AttributeDeclaration)[]
			elements: QuoteElementData[]
		}
		Reference {
			name: String
		}
		RegularExpression {
			modifiers: ModifierData[]
			value: String
		}
		RepeatStatement {
			attributes: Ast(AttributeDeclaration)[]
			expression: Ast(Expression)?
			body: Ast(Block, ExpressionStatement)
		}
		RequireDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(DescriptiveType)[]
		}
		RequireOrExternDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(DescriptiveType)[]
		}
		RequireOrImportDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(ImportDeclarator)[]
		}
		RestrictiveExpression {
			operator: RestrictiveOperatorData
			condition: Ast(Expression)
			expression: Ast(Expression)
		}
		ReturnStatement {
			attributes: Ast(AttributeDeclaration)[]
			value: Ast(Expression)?
		}
		RollingExpression {
			modifiers: ModifierData[]
			object: Ast(Expression)
			expressions: Ast(Expression)[]
		}
		SequenceExpression {
			modifiers: ModifierData[]
			expressions: Ast(Expression)[]
		}
		SemtimeStatement {
			attributes: Ast(AttributeDeclaration)[]
			body: Ast(Block, Expression)
		}
		SetStatement {
			attributes: Ast(AttributeDeclaration)[]
			value: Ast(Expression)?
		}
		ShebangDeclaration {
			command: String
		}
		ShorthandProperty {
			attributes: Ast(AttributeDeclaration)[]
			name: Ast(Identifier, ComputedPropertyName, Literal, TemplateExpression, ThisExpression)
		}
		SpreadExpression {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			operand: Ast(Expression)
			members: Ast(NamedSpecifier)[]
		}
		StatementList {
			attributes: Ast(AttributeDeclaration)[]
			body: Ast(Statement)[]
		}
		StructDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			extends: Ast(TypeReference)?
			implements: Ast(Identifier, MemberExpression)[]?
			fields: Ast(FieldDeclaration)[]
		}
		SyntimeCallExpression {
			modifiers: ModifierData[]
			callee: Ast(Expression)
			arguments: Ast(Argument, Expression, Statement)[]
		}
		SyntimeDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			declarations: Ast(ImplementDeclaration, MacroDeclaration, NamespaceDeclaration)[]
		}
		SyntimeStatement {
			attributes: Ast(AttributeDeclaration)[]
			body: Ast(Block)
		}
		TaggedTemplateExpression {
			tag: Ast(Expression)
			template: Ast(TemplateExpression)
		}
		TemplateExpression {
			modifiers: ModifierData[]
			elements: Ast(Expression)[]
		}
		ThisExpression {
			modifiers: ModifierData[]
			name: Ast(Identifier)
		}
		ThrowStatement {
			attributes: Ast(AttributeDeclaration)[]
			value: Ast(Expression)?
		}
		TopicReference {
			modifiers: ModifierData[]
		}
		TryExpression {
			modifiers: ModifierData[]
			argument: Ast(Expression)
			defaultValue: Ast(Expression)?
		}
		TryStatement {
			attributes: Ast(AttributeDeclaration)[]
			body: Ast(Block)
			catchClauses: Ast(CatchClause)[]
			catchClause: Ast(CatchClause)?
			finalizer: Ast(Block)?
		}
		TupleDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			extends: Ast(Identifier)?
			implements: Ast(Identifier, MemberExpression)[]?
			fields: Ast(TupleField)[]
		}
		TupleField {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)?
			type: Ast(Type)?
			defaultValue: Ast(Expression)?
		}
		TypedExpression {
			modifiers: ModifierData[]
			expression: Ast(Expression)
			typeParameters: Ast(Type)[]?
		}
		TypedSpecifier {
			type: Ast(DescriptiveType)
		}
		TypeAliasDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			name: Ast(Identifier)
			typeParameters: Ast(TypeParameter)[]?
			type: Ast(Type)
		}
		TypeList {
			attributes: Ast(AttributeDeclaration)[]
			types: Ast(DescriptiveType)[]
		}
		TypeParameter {
			modifiers: ModifierData[]
			name: Ast(Identifier)
			constraint: Ast(Type)?
		}
		TypeReference {
			modifiers: ModifierData[]
			typeName: Ast(Identifier, MemberExpression, UnaryExpression)?
			typeParameters: Ast(Type)[]?
			typeSubtypes: Ast(Identifier)[] | Ast(Expression) | Null
		}
		UnaryExpression {
			modifiers: ModifierData[]
			operator: UnaryOperatorData
			argument: Ast(Expression)
		}
		UnaryTypeExpression {
			modifiers: ModifierData[]
			operator: UnaryTypeOperatorData
			argument: Ast(Type, Expression)
		}
		UnionType {
			types: Ast(Type)[]
		}
		UnlessStatement {
			attributes: Ast(AttributeDeclaration)[]
			condition: Ast(Expression)
			whenFalse: Ast(Block, BreakStatement, ContinueStatement, ExpressionStatement, ReturnStatement, SetStatement, ThrowStatement)
		}
		UntilStatement {
			attributes: Ast(AttributeDeclaration)[]
			condition: Ast(Expression)
			body: Ast(Block, Expression)
		}
		VariableDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			variables: Ast(VariableDeclarator)[]
			operator: BinaryOperatorData(Assignment)?
			value: Ast(Expression)?
		}
		VariableDeclarator {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier, ArrayBinding, ObjectBinding)
			type: Ast(Type)?
		}
		VariableStatement {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			declarations: Ast(VariableDeclaration)[]
		}
		VariantDeclaration {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: Ast(Identifier)
			fields: Ast(VariantField)[]
		}
		VariantField {
			attributes: Ast(AttributeDeclaration)[]
			modifiers: ModifierData[]
			names: Ast(Identifier)[]
			type: Ast(Type)?
		}
		VariantType {
			master: Ast(TypeReference)
			properties: Ast(VariantField)[]
		}
		WhileStatement {
			attributes: Ast(AttributeDeclaration)[]
			condition: Ast(Expression, VariableDeclaration)
			body: Ast(Block, Expression)
		}
		WithStatement {
			attributes: Ast(AttributeDeclaration)[]
			variables: Ast(Expression, VariableDeclaration)[]
			body: Ast(Block)
			finalizer: Ast(Block)?
		}
	}
}
