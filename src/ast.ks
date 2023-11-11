/**
 * ast.ks
 * Version 0.9.0
 * September 13th, 2016
 *
 * Copyright (c) 2016 Baptiste Augrain
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/
export enum AssignmentOperatorKind { # {{{
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

export enum BinaryOperatorKind { # {{{
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

export enum IterationKind { # {{{
	Array
	From
	Object
	Range
} # }}}

export enum MacroElementKind { # {{{
	Expression = 1
	Literal
	NewLine
} # }}}

export enum ModifierKind { # {{{
	Abstract = 1
	Alias
	Ascending
	Async
	Assist
	AutoEvaluate
	Autofill
	AutoType
	Ballpark
	Computed
	Constant
	Declarative
	Default
	Descending
	Disabled
	Dynamic
	Exclusion
	Existential
	Final
	Forced
	Internal
	LateInit
	LazyInit
	MultiLine
	Mutable
	Named
	NameOnly
	NonEmpty
	NonNullable
	Nullable
	Ordinal
	Override
	Overwrite
	PositionOnly
	Private
	Protected
	Public
	Required
	Rest
	Sealed
	Spread
	Static
	System
	ThisAlias
	Wildcard
} # }}}

export enum NodeKind { # {{{
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
	Block
	BlockStatement
	BreakStatement
	CallExpression
	CatchClause
	ClassDeclaration
	ClassName
	CommentBlock
	CommentLine
	ComparisonExpression
	ComputedPropertyName
	ConditionalExpression
	ContinueStatement
	CurryExpression
	DeclarationSpecifier
	DiscloseDeclaration
	DisruptiveExpression
	DoUntilStatement
	DoWhileStatement
	EnumDeclaration
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
	StructField
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

	Expression = ArrayExpression | BinaryExpression | CallExpression | ComparisonExpression | ConditionalExpression | CurryExpression | DisruptiveExpression | FunctionExpression | Identifier | IfExpression | JunctionExpression | LambdaExpression | Literal | MemberExpression | NamedArgument | NumericExpression | ObjectExpression | ObjectMember | PlaceholderArgument | PolyadicExpression | PositionalArgument | RegularExpression | RestrictiveExpression | RollingExpression | SequenceExpression | ShorthandProperty | SpreadExpression | TaggedTemplateExpression | TemplateExpression | ThisExpression | TopicReference | UnaryExpression

	Statement = BitmaskDeclaration | BlockStatement | BreakStatement | ClassDeclaration | ContinueStatement | DoUntilStatement | DoWhileStatement | EnumDeclaration | ExportDeclaration | ExternDeclaration | ExternOrImportDeclaration | ExternOrRequireDeclaration | ExpressionStatement | FallthroughStatement | ForStatement | FunctionDeclaration | IfStatement | ImplementDeclaration | ImportDeclaration | IncludeAgainDeclaration | IncludeDeclaration | MacroDeclaration | MatchStatement | NamespaceDeclaration | PassStatement | RepeatStatement | RequireDeclaration | RequireOrExternDeclaration | RequireOrImportDeclaration | ReturnStatement | SetStatement | StructDeclaration | ThrowStatement | TraitDeclaration | TryStatement | TupleDeclaration | UnlessStatement | UntilStatement | VariableStatement | WhileStatement | WithStatement

	Type = ArrayType | ExclusionType| FunctionExpression | FusionType | ObjectType | TypeReference
} # }}}

export enum ReificationKind { # {{{
	Argument = 1
	Expression
	Join
	Statement
	Write
} # }}}

export enum RestrictiveOperatorKind { # {{{
	If
	Unless
} # }}}

export enum ScopeKind { # {{{
	Argument = 1
	This
} # }}}

export enum UnaryOperatorKind { # {{{
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

export enum UnaryTypeOperatorKind { # {{{
	Constant = 1
	Mutable
	NewInstance
	TypeOf
	ValueOf
} # }}}
