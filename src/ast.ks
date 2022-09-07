/**
 * ast.ks
 * Version 0.9.0
 * September 13th, 2016
 *
 * Copyright (c) 2016 Baptiste Augrain
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/
export enum AssignmentOperatorKind { // {{{
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
} // }}}

export enum BinaryOperatorKind { // {{{
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
} // }}}

export enum MacroElementKind { // {{{
	Expression = 1
	Literal
	NewLine
} // }}}

export enum ModifierKind { // {{{
	Abstract = 1
	Async
	AutoEvaluate
	Autofill
	Computed
	Declarative
	Descending
	Disabled
	Dynamic
	Flagged
	Forced
	Immutable
	Internal
	LateInit
	LazyInit
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
	SetterAlias
	Static
	System
	ThisAlias
} // }}}

export enum NodeKind { // {{{
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
	Block
	BreakStatement
	CallExpression
	CallMacroExpression
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
	DestroyStatement
	DiscloseDeclaration
	DoUntilStatement
	DoWhileStatement
	EnumDeclaration
	EnumExpression
	ExclusionType
	ExportDeclaration
	ExportDeclarationSpecifier
	ExportExclusionSpecifier
	ExportNamedSpecifier
	ExportPropertiesSpecifier
	ExportWildcardSpecifier
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
	Identifier
	IfExpression
	IfStatement
	ImplementDeclaration
	ImportArgument
	ImportDeclaration
	ImportDeclarator
	ImportExclusionSpecifier
	ImportNamespaceSpecifier
	ImportReference
	ImportSpecifier
	IncludeAgainDeclaration
	IncludeDeclaration
	IncludeDeclarator
	JunctionExpression
	LambdaExpression
	Literal
	MacroDeclaration
	MacroExpression
	MemberExpression
	MethodDeclaration
	MixinDeclaration
	Module
	MutatorDeclaration
	NamedArgument
	NamespaceDeclaration
	NumericExpression
	ObjectBinding
	ObjectExpression
	ObjectMember
	ObjectType
	OmittedExpression
	Parameter
	PolyadicExpression
	PropertyDeclaration
	ProxyDeclaration
	ProxyGroupDeclaration
	RegularExpression
	RequireDeclaration
	RequireOrExternDeclaration
	RequireOrImportDeclaration
	ReturnStatement
	SequenceExpression
	ShebangDeclaration
	ShorthandProperty
	StructDeclaration
	StructField
	SurrogateDeclaration
	SwitchClause
	SwitchConditionArray
	SwitchConditionEnum
	SwitchConditionObject
	SwitchConditionRange
	SwitchConditionType
	SwitchExpression
	SwitchStatement
	SwitchTypeCasting
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
	TypeReference
	UnaryExpression
	UnlessExpression
	UnlessStatement
	UntilStatement
	UnionType
	VariableDeclaration
	VariableDeclarator
	WhileStatement
} // }}}

export enum ReificationKind { // {{{
	Argument = 1
	Expression
	Join
	Statement
	Write
} // }}}

export enum ScopeKind { // {{{
	Argument = 1
	Null
	This
} // }}}

export enum UnaryOperatorKind { // {{{
	Existential = 1
	ForcedTypeCasting
	Negation
	Negative
	NonEmpty
	NullableTypeCasting
	Spread
} // }}}
