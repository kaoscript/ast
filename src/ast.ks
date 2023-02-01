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
	And
	Division
	Empty
	EmptyCoalescing
	Equals
	Existential
	LeftShift
	Modulo
	Multiplication
	NonEmpty
	NonExistential
	NullCoalescing
	Or
	Quotient
	Return
	RightShift
	Subtraction
	Xor
} # }}}

export enum BinaryOperatorKind { # {{{
	Addition = 1
	And
	Assignment
	Division
	EmptyCoalescing
	Equality
	GreaterThan
	GreaterThanOrEqual
	Imply
	Inequality
	LeftShift
	LessThan
	LessThanOrEqual
	Match
	Mismatch
	Modulo
	Multiplication
	NullCoalescing
	Or
	Quotient
	RightShift
	Subtraction
	TypeCasting
	TypeEquality
	TypeInequality
	Xor
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
	AutoEvaluate
	Autofill
	Ballpark
	Computed
	Declarative
	Default
	Descending
	Disabled
	Dynamic
	Exclusion
	Forced
	Immutable
	Internal
	LateInit
	LazyInit
	MultiLine
	Mutable
	Named
	NameOnly
	Nullable
	Override
	Overwrite
	PositionOnly
	Private
	Protected
	Public
	Required
	Rest
	Sealed
	Static
	System
	ThisAlias
	Wildcard
} # }}}

export enum NodeKind { # {{{
	AccessorDeclaration = 1
	Argument
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
	CreateExpression
	CurryExpression
	DeclarationSpecifier
	DestroyStatement
	DiscloseDeclaration
	DisruptiveExpression
	DoUntilStatement
	DoWhileStatement
	EnumDeclaration
	EnumExpression
	ExclusionType
	ExportDeclaration
	ExternDeclaration
	ExternOrImportDeclaration
	ExternOrRequireDeclaration
	FallthroughStatement
	FieldDeclaration
	ForFromStatement
	ForInStatement
	ForOfStatement
	ForRangeStatement
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
	PickStatement
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
	SequenceExpression
	ShebangDeclaration
	ShorthandProperty
	StructDeclaration
	StructField
	SurrogateDeclaration
	TaggedTemplateExpression
	TemplateExpression
	ThisExpression
	ThrowStatement
	TraitDeclaration
	TryExpression
	TryStatement
	TupleDeclaration
	TupleField
	TypeAliasDeclaration
	TypeList
	TypeReference
	TypedSpecifier
	UnaryExpression
	UnlessStatement
	UntilStatement
	UnionType
	VariableDeclaration
	VariableDeclarator
	VariableStatement
	WhileStatement
	WithStatement
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
	Null
	This
} # }}}

export enum UnaryOperatorKind { # {{{
	Existential = 1
	ForcedTypeCasting
	Implicit
	Negation
	Negative
	NonEmpty
	NullableTypeCasting
	Spread
} # }}}
