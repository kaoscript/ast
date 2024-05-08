enum NodeKind { # {{{
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
	MacroExpression
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
	Reference
	RegularExpression
	RepeatStatement
	RequireDeclaration
	RequireOrExternDeclaration
	RequireOrImportDeclaration
	RestrictiveExpression
	ReturnStatement
	RollingExpression
	SequenceExpression
	SetStatement
	ShebangDeclaration
	ShorthandProperty
	SpreadExpression
	StatementList
	StructDeclaration
	SurrogateDeclaration
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

	ClassMember = FieldDeclaration | MacroDeclaration | MethodDeclaration | PropertyDeclaration | ProxyDeclaration | ProxyGroupDeclaration

	Expression = ArrayBinding | ArrayComprehension | ArrayExpression | ArrayRange | AwaitExpression | BinaryExpression | CallExpression | ComparisonExpression | CurryExpression | DisruptiveExpression | FunctionExpression | Identifier | IfExpression | JunctionExpression | LambdaExpression | Literal | MacroExpression | MatchExpression | MemberExpression | NamedArgument | NumericExpression | ObjectBinding | ObjectComprehension | ObjectExpression | ObjectMember | PlaceholderArgument | PolyadicExpression | PositionalArgument | Reference | RegularExpression | RestrictiveExpression | RollingExpression | SequenceExpression | ShorthandProperty | SpreadExpression | TaggedTemplateExpression | TemplateExpression | ThisExpression | TopicReference | TryExpression | TypedExpression | UnaryExpression

	Statement = BitmaskDeclaration | BlockStatement | BreakStatement | ClassDeclaration | ContinueStatement | DiscloseDeclaration | DoUntilStatement | DoWhileStatement | EnumDeclaration | ExportDeclaration | ExternDeclaration | ExternOrImportDeclaration | ExternOrRequireDeclaration | ExpressionStatement | FallthroughStatement | ForStatement | FunctionDeclaration | IfStatement | ImplementDeclaration | ImportDeclaration | IncludeAgainDeclaration | IncludeDeclaration | MacroDeclaration | MatchStatement | NamespaceDeclaration | PassStatement | RepeatStatement | RequireDeclaration | RequireOrExternDeclaration | RequireOrImportDeclaration | ReturnStatement | SetStatement | StructDeclaration | ThrowStatement | TraitDeclaration | TryStatement | TupleDeclaration | TypeAliasDeclaration | UnlessStatement | UntilStatement | VariableStatement | VariantDeclaration | WhileStatement | WithStatement

	Type = ArrayType | ExclusionType| FunctionExpression | FusionType | ObjectType | TypeReference | UnaryTypeExpression | UnionType | VariantType

	SpecialDeclaration = BitmaskDeclaration | ClassDeclaration | EnumDeclaration | FunctionDeclaration | MacroDeclaration | MacroExpression | NamespaceDeclaration | StructDeclaration | TupleDeclaration | TypeAliasDeclaration | VariableStatement

	DescriptiveType = SpecialDeclaration | ExportDeclaration | VariableDeclarator
} # }}}

type NodeData = Range & {
	variant kind: NodeKind {
		AccessorDeclaration {
			body: NodeData(Block, Expression)?
		}
		Argument {
			modifiers: ModifierData[]
			name: NodeData(Identifier)?
			value: NodeData(Expression)
		}
		ArrayBinding {
			elements: NodeData(BindingElement)[]
			alias: NodeData(Identifier)?
		}
		ArrayComprehension {
			modifiers: ModifierData[]
			value: NodeData(Expression)
			iteration: IterationData
		}
		ArrayExpression {
			modifiers: ModifierData[]
			values: NodeData(Expression)[]
		}
		ArrayRange {
			from: NodeData(Expression)?
			then: NodeData(Expression)?
			til: NodeData(Expression)?
			to: NodeData(Expression)?
			by: NodeData(Expression)?
		}
		ArrayType {
			modifiers: ModifierData[]
			properties: NodeData(PropertyType)[]
			rest: NodeData(PropertyType)?
		}
		AttributeDeclaration {
			declaration: NodeData(Identifier, AttributeExpression, AttributeOperation)
		}
		AttributeExpression {
			name: NodeData(Identifier)
			arguments: NodeData(Identifier, AttributeOperation, AttributeExpression)[]
		}
		AttributeOperation {
			name: NodeData(Identifier)
			value: NodeData(Literal)
		}
		AwaitExpression {
			modifiers: ModifierData[]
			variables: NodeData(VariableDeclarator)[]?
			operation: NodeData(Expression)?
		}
		BinaryExpression {
			modifiers: ModifierData[]
			operator: BinaryOperatorData
			left: NodeData(Expression)?
			right: NodeData(Expression, Type)?
		}
		BindingElement {
			attributes: NodeData(AttributeDeclaration)[]?
			modifiers: ModifierData[]
			external: NodeData(Identifier)?
			internal: NodeData(Identifier, ArrayBinding, ObjectBinding, ThisExpression)?
			type: NodeData(Type)?
			operator: BinaryOperatorData(Assignment)?
			defaultValue: NodeData(Expression)?
		}
		BitmaskDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			type: NodeData(Identifier)?
			members: NodeData(BitmaskValue, MethodDeclaration)[]
		}
		BitmaskValue {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			value: NodeData(Expression)?
		}
		Block {
			attributes: NodeData(AttributeDeclaration)[]
			statements: NodeData(Statement)[]
		}
		BlockStatement {
			attributes: NodeData(AttributeDeclaration)[]
			label: NodeData(Identifier)
			body: NodeData(Block)
		}
		BreakStatement {
			attributes: NodeData(AttributeDeclaration)[]
			label: NodeData(Identifier)?
		}
		CallExpression {
			modifiers: ModifierData[]
			scope: ScopeData
			callee: NodeData(Expression)
			arguments: NodeData(Argument, Expression)[]
		}
		CatchClause {
			body: NodeData(Block)
			binding: NodeData(Identifier)?
			type: NodeData(Identifier)?
		}
		ClassDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			typeParameters: NodeData(TypeParameter)[]?
			version: VersionData?
			extends: NodeData(Identifier, MemberExpression)?
			implements: NodeData(Identifier, MemberExpression)[]?
			members: NodeData(ClassMember)[]
		}
		ComparisonExpression {
			modifiers: ModifierData[]
			values: Array<NodeData(Expression) | BinaryOperatorData>
		}
		ComputedPropertyName {
			expression: NodeData(Expression)
		}
		ContinueStatement {
			attributes: NodeData(AttributeDeclaration)[]
			label: NodeData(Identifier)?
		}
		CurryExpression {
			modifiers: ModifierData[]
			scope: ScopeData
			callee: NodeData(Expression)
			arguments: NodeData(Argument, Expression)[]
		}
		DeclarationSpecifier {
			declaration: NodeData(SpecialDeclaration)
		}
		DiscloseDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			name: NodeData(Identifier)
			typeParameters: NodeData(TypeParameter)[]?
			members: NodeData(ClassMember)[]
		}
		DisruptiveExpression {
			operator: RestrictiveOperatorData
			condition: NodeData(Expression)
			mainExpression: NodeData(Expression)
			disruptedExpression: NodeData(Expression)
		}
		DoUntilStatement {
			attributes: NodeData(AttributeDeclaration)[]
			condition: NodeData(Expression)
			body: NodeData(Block)
		}
		DoWhileStatement {
			attributes: NodeData(AttributeDeclaration)[]
			condition: NodeData(Expression)
			body: NodeData(Block)
		}
		EnumDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			type: NodeData(TypeReference)?
			initial: NodeData(Expression)?
			step: NodeData(Expression)?
			members: NodeData(EnumValue, FieldDeclaration, MethodDeclaration)[]
		}
		EnumValue {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			value: NodeData(Expression)?
			arguments: NodeData(Argument, Expression)[]?
		}
		ExclusionType {
			types: NodeData(Type)[]
		}
		ExportDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(DeclarationSpecifier, GroupSpecifier, NamedSpecifier, PropertiesSpecifier)[]
		}
		ExpressionStatement {
			attributes: NodeData(AttributeDeclaration)[]
			expression: NodeData(Expression)
		}
		ExternDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(DescriptiveType)[]
		}
		ExternOrImportDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(ImportDeclarator)[]
		}
		ExternOrRequireDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(DescriptiveType)[]
		}
		FallthroughStatement {
			attributes: NodeData(AttributeDeclaration)[]
		}
		FieldDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			type: NodeData(Type)?
			value: NodeData(Expression)?
		}
		ForStatement {
			attributes: NodeData(AttributeDeclaration)[]
			iterations: IterationData[]
			body: NodeData(Block, ExpressionStatement)
			else: NodeData(Block)?
		}
		FunctionDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			typeParameters: NodeData(TypeParameter)[]?
			parameters: NodeData(Parameter)[]?
			type: NodeData(Type)?
			throws: NodeData(Identifier)[]
			body: NodeData(Block, Expression, IfStatement, UnlessStatement)?
		}
		FunctionExpression {
			modifiers: ModifierData[]
			parameters: NodeData(Parameter)[]?
			type: NodeData(Type)?
			throws: NodeData(Identifier)[]
			body: NodeData(Block, Expression, IfStatement, UnlessStatement)?
		}
		FusionType {
			types: NodeData(Type)[]
		}
		GroupSpecifier {
			modifiers: ModifierData[]
			elements: NodeData(NamedSpecifier, TypedSpecifier)[]
			type: NodeData(DescriptiveType)?
		}
		Identifier {
			modifiers: ModifierData[]
			name: String
		}
		IfExpression {
			attributes: NodeData(AttributeDeclaration)[]
			condition: NodeData(Expression)?
			declaration: NodeData(VariableDeclaration)?
			whenTrue: NodeData(Block, SetStatement)
			whenFalse: NodeData(Block, IfExpression, SetStatement)
		}
		IfStatement {
			attributes: NodeData(AttributeDeclaration)[]
			condition: NodeData(Expression)?
			declarations: NodeData(VariableDeclaration, Expression)[][]?
			whenTrue: NodeData(Block, BreakStatement, ContinueStatement, ExpressionStatement, ReturnStatement, SetStatement, ThrowStatement)
			whenFalse: NodeData(Block, IfStatement)?
		}
		ImplementDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			variable: NodeData(Identifier, MemberExpression)
			interface: NodeData(Identifier, MemberExpression)?
			properties: NodeData(ClassMember)[]
		}
		ImportDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(ImportDeclarator)[]
		}
		ImportDeclarator {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			source: NodeData(Literal)
			arguments: NodeData(NamedArgument, PositionalArgument)[]?
			type: NodeData(DescriptiveType, TypeList)?
			specifiers: NodeData(GroupSpecifier, NamedSpecifier)[]
		}
		IncludeAgainDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(IncludeDeclarator)[]
		}
		IncludeDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(IncludeDeclarator)[]
		}
		IncludeDeclarator {
			attributes: NodeData(AttributeDeclaration)[]
			file: String
		}
		JunctionExpression {
			modifiers: ModifierData[]
			operator: BinaryOperatorData
			operands: NodeData(Expression, Type)[]
		}
		LambdaExpression {
			modifiers: ModifierData[]
			parameters: NodeData(Parameter)[]?
			type: NodeData(Type)?
			throws: NodeData(Identifier)[]
			body: NodeData(Block, Expression)
		}
		Literal {
			modifiers: ModifierData[]
			value: String
		}
		MacroDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			name: NodeData(Identifier)
			parameters: NodeData(Parameter)[]
			body: NodeData(Block, ExpressionStatement)
		}
		MacroExpression {
			attributes: NodeData(AttributeDeclaration)[]
			elements: MacroElementData[]
		}
		MatchClause {
			conditions: NodeData(Expression, MatchConditionArray, MatchConditionObject, MatchConditionRange, MatchConditionType)[]
			binding: NodeData(VariableDeclarator, ArrayBinding, ObjectBinding)?
			filter: NodeData(Expression)?
			body: NodeData(Block, Statement)
		}
		MatchConditionArray {
			values: NodeData(Expression, MatchConditionRange, OmittedExpression)[]
		}
		MatchConditionObject {
			properties: NodeData(ObjectMember)[]
		}
		MatchConditionRange {
			from: NodeData(Expression)?
			then: NodeData(Expression)?
			til: NodeData(Expression)?
			to: NodeData(Expression)?
		}
		MatchConditionType {
			type: NodeData(Type)
		}
		MatchExpression {
			expression: NodeData(Expression)
			clauses: NodeData(MatchClause)[]
		}
		MatchStatement {
			attributes: NodeData(AttributeDeclaration)[]
			expression: NodeData(Expression)?
			declaration: NodeData(VariableDeclaration)?
			clauses: NodeData(MatchClause)[]
		}
		MemberExpression {
			modifiers: ModifierData[]
			object: NodeData(Expression)?
			property: NodeData(Expression)
		}
		MethodDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			typeParameters: NodeData(TypeParameter)[]?
			parameters: NodeData(Parameter)[]
			type: NodeData(Type)?
			throws: NodeData(Identifier)[]
			body: NodeData(Block, Expression, IfStatement, UnlessStatement)?
		}
		Module {
			attributes: NodeData(AttributeDeclaration)[]
			body: NodeData(Statement, ShebangDeclaration)[]
		}
		MutatorDeclaration {
			body: NodeData(Block, Expression)?
		}
		NamedArgument {
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			value: NodeData(Expression, PlaceholderArgument)
		}
		NamedSpecifier {
			modifiers: ModifierData[]
			internal: NodeData(Identifier, MemberExpression, ArrayBinding, ObjectBinding)
			external: NodeData(Identifier)?
		}
		NamespaceDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			statements: NodeData(Statement, DescriptiveType, ExportDeclaration, ExternDeclaration)[]
		}
		NumericExpression {
			modifiers: ModifierData[]
			value: Number
			radix: Number
		}
		ObjectBinding {
			elements: NodeData(BindingElement)[]
			alias: NodeData(Identifier)?
		}
		ObjectComprehension {
			modifiers: ModifierData[]
			name: NodeData(ComputedPropertyName, TemplateExpression)
			value: NodeData(Expression)
			iteration: IterationData
		}
		ObjectExpression {
			modifiers: ModifierData[]
			attributes: NodeData(AttributeDeclaration)[]
			properties: NodeData(Expression)[]
		}
		ObjectMember {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier, ComputedPropertyName, Literal, TemplateExpression)?
			type: NodeData(Type)?
			value: NodeData(Expression, MatchConditionRange)?
		}
		ObjectType {
			modifiers: ModifierData[]
			properties: NodeData(PropertyType)[]
			rest: NodeData(PropertyType)?
		}
		OmittedExpression {
			modifiers: ModifierData[]
		}
		PassStatement {
			attributes: NodeData(AttributeDeclaration)[]
		}
		Parameter {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			external: NodeData(Identifier)?
			internal: NodeData(Identifier, ArrayBinding, ObjectBinding, ThisExpression)?
			type: NodeData(Type)?
			operator: BinaryOperatorData(Assignment)?
			defaultValue: NodeData(Expression)?
		}
		PlaceholderArgument {
			modifiers: ModifierData[]
			index: NodeData(NumericExpression)?
		}
		PolyadicExpression {
			modifiers: ModifierData[]
			operator: BinaryOperatorData
			operands: NodeData(Expression)[]
		}
		PositionalArgument {
			modifiers: ModifierData[]
			value: NodeData(Expression)
		}
		PropertiesSpecifier {
			modifiers: ModifierData[]
			object: NodeData(Identifier, MemberExpression)
			properties: NodeData(NamedSpecifier)[]
		}
		PropertyDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			type: NodeData(Type)?
			defaultValue: NodeData(Expression)?
			accessor: NodeData(AccessorDeclaration)?
			mutator: NodeData(MutatorDeclaration)?
		}
		PropertyType {
			modifiers: ModifierData[]
			name: NodeData(Identifier)?
			type: NodeData(Type)?
		}
		ProxyDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			internal: NodeData(Identifier)
			external: NodeData(Expression)
		}
		ProxyGroupDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			recipient: NodeData(Expression)
			elements: NodeData(ProxyDeclaration)[]
		}
		Reference {
			name: String
		}
		RegularExpression {
			modifiers: ModifierData[]
			value: String
		}
		RepeatStatement {
			attributes: NodeData(AttributeDeclaration)[]
			expression: NodeData(Expression)?
			body: NodeData(Block, ExpressionStatement)
		}
		RequireDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(DescriptiveType)[]
		}
		RequireOrExternDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(DescriptiveType)[]
		}
		RequireOrImportDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			declarations: NodeData(ImportDeclarator)[]
		}
		RestrictiveExpression {
			operator: RestrictiveOperatorData
			condition: NodeData(Expression)
			expression: NodeData(Expression)
		}
		ReturnStatement {
			attributes: NodeData(AttributeDeclaration)[]
			value: NodeData(Expression)?
		}
		RollingExpression {
			modifiers: ModifierData[]
			object: NodeData(Expression)
			expressions: NodeData(Expression)[]
		}
		SequenceExpression {
			modifiers: ModifierData[]
			expressions: NodeData(Expression)[]
		}
		SetStatement {
			attributes: NodeData(AttributeDeclaration)[]
			value: NodeData(Expression)?
		}
		ShebangDeclaration {
			command: String
		}
		ShorthandProperty {
			attributes: NodeData(AttributeDeclaration)[]
			name: NodeData(Identifier, ComputedPropertyName, Literal, TemplateExpression, ThisExpression)
		}
		SpreadExpression {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			operand: NodeData(Expression)
			members: NodeData(NamedSpecifier)[]
		}
		StatementList {
			attributes: NodeData(AttributeDeclaration)[]
			body: NodeData(Statement)[]
		}
		StructDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			extends: NodeData(TypeReference)?
			implements: NodeData(Identifier, MemberExpression)[]?
			fields: NodeData(FieldDeclaration)[]
		}
		TaggedTemplateExpression {
			tag: NodeData(Expression)
			template: NodeData(TemplateExpression)
		}
		TemplateExpression {
			modifiers: ModifierData[]
			elements: NodeData(Expression)[]
		}
		ThisExpression {
			modifiers: ModifierData[]
			name: NodeData(Identifier)
		}
		ThrowStatement {
			attributes: NodeData(AttributeDeclaration)[]
			value: NodeData(Expression)?
		}
		TopicReference {
			modifiers: ModifierData[]
		}
		TryExpression {
			modifiers: ModifierData[]
			argument: NodeData(Expression)
			defaultValue: NodeData(Expression)?
		}
		TryStatement {
			attributes: NodeData(AttributeDeclaration)[]
			body: NodeData(Block)
			catchClauses: NodeData(CatchClause)[]
			catchClause: NodeData(CatchClause)?
			finalizer: NodeData(Block)?
		}
		TupleDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			extends: NodeData(Identifier)?
			implements: NodeData(Identifier, MemberExpression)[]?
			fields: NodeData(TupleField)[]
		}
		TupleField {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)?
			type: NodeData(Type)?
			defaultValue: NodeData(Expression)?
		}
		TypedExpression {
			modifiers: ModifierData[]
			expression: NodeData(Expression)
			typeParameters: NodeData(Type)[]?
		}
		TypedSpecifier {
			type: NodeData(DescriptiveType)
		}
		TypeAliasDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			name: NodeData(Identifier)
			typeParameters: NodeData(TypeParameter)[]?
			type: NodeData(Type)
		}
		TypeList {
			attributes: NodeData(AttributeDeclaration)[]
			types: NodeData(DescriptiveType)[]
		}
		TypeParameter {
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			constraint: NodeData(Type)?
		}
		TypeReference {
			modifiers: ModifierData[]
			typeName: NodeData(Identifier, MemberExpression, UnaryExpression)?
			typeParameters: NodeData(Type)[]?
			typeSubtypes: NodeData(Identifier)[] | NodeData(Expression) | Null
		}
		UnaryExpression {
			modifiers: ModifierData[]
			operator: UnaryOperatorData
			argument: NodeData(Expression)
		}
		UnaryTypeExpression {
			modifiers: ModifierData[]
			operator: UnaryTypeOperatorData
			argument: NodeData(Type, Expression)
		}
		UnionType {
			types: NodeData(Type)[]
		}
		UnlessStatement {
			attributes: NodeData(AttributeDeclaration)[]
			condition: NodeData(Expression)
			whenFalse: NodeData(Block, BreakStatement, ContinueStatement, ExpressionStatement, ReturnStatement, SetStatement, ThrowStatement)
		}
		UntilStatement {
			attributes: NodeData(AttributeDeclaration)[]
			condition: NodeData(Expression)
			body: NodeData(Block, Expression)
		}
		VariableDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			variables: NodeData(VariableDeclarator)[]
			operator: BinaryOperatorData(Assignment)?
			value: NodeData(Expression)?
		}
		VariableDeclarator {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier, ArrayBinding, ObjectBinding)
			type: NodeData(Type)?
		}
		VariableStatement {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			declarations: NodeData(VariableDeclaration)[]
		}
		VariantDeclaration {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			name: NodeData(Identifier)
			fields: NodeData(VariantField)[]
		}
		VariantField {
			attributes: NodeData(AttributeDeclaration)[]
			modifiers: ModifierData[]
			names: NodeData(Identifier)[]
			type: NodeData(Type)?
		}
		VariantType {
			master: NodeData(TypeReference)
			properties: NodeData(VariantField)[]
		}
		WhileStatement {
			attributes: NodeData(AttributeDeclaration)[]
			condition: NodeData(Expression, VariableDeclaration)
			body: NodeData(Block, Expression)
		}
		WithStatement {
			attributes: NodeData(AttributeDeclaration)[]
			variables: NodeData(Expression, VariableDeclaration)[]
			body: NodeData(Block)
			finalizer: NodeData(Block)?
		}
	}
}
