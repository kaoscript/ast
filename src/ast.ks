/**
 * ast.ks
 * Version 0.8.0
 * September 13th, 2016
 *
 * Copyright (c) 2016 Baptiste Augrain
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/
export enum AssignmentOperatorKind { // {{{
	Addition = 1
	BitwiseAnd
	BitwiseLeftShift
	BitwiseOr
	BitwiseRightShift
	BitwiseXor
	Division
	Equality
	Existential
	Modulo
	Multiplication
	NonExistential
	NullCoalescing
	Quotient
	Subtraction
} // }}}

export enum BinaryOperatorKind { // {{{
	Addition = 1
	And
	Assignment
	BitwiseAnd
	BitwiseLeftShift
	BitwiseOr
	BitwiseRightShift
	BitwiseXor
	Division
	Equality
	GreaterThan
	GreaterThanOrEqual
	Imply
	Inequality
	LessThan
	LessThanOrEqual
	Match
	Mismatch
	Modulo
	Multiplication
	NullCoalescing
	Or
	Quotient
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
	AutoTyping
	Computed
	Declarative
	Descending
	Disabled
	Final
	Flagged
	Forced
	Immutable
	Internal
	LateInit
	LazyInit
	Named
	Nullable
	Override
	Overwrite
	Private
	Protected
	Public
	Required
	Rest
	Sealed
	SetterAlias
	Static
	Systemic
	ThisAlias
} // }}}

export enum NodeKind { // {{{
	AccessorDeclaration = 1
	ArrayBinding
	ArrayComprehension
	ArrayExpression
	ArrayRange
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
	OmittedExpression
	Parameter
	PolyadicExpression
	PropertyDeclaration
	RegularExpression
	RequireDeclaration
	RequireOrExternDeclaration
	RequireOrImportDeclaration
	ReturnStatement
	ReturnTypeReference
	SequenceExpression
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
	BitwiseNot = 1
	DecrementPostfix
	DecrementPrefix
	Existential
	ForcedTypeCasting
	IncrementPostfix
	IncrementPrefix
	Negation
	Negative
	NullableTypeCasting
	Spread
} // }}}