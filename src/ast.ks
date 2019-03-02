/**
 * ast.ks
 * Version 0.7.0
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
	Inequality
	LessThan
	LessThanOrEqual
	Modulo
	Multiplication
	NullCoalescing
	Or
	Subtraction
	TypeCasting
	TypeEquality
	TypeInequality
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
	Override
	Private
	Protected
	Public
	Rest
	Sealed
	SetterAlias
	Static
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
	ComputedPropertyName
	ConditionalExpression
	ContinueStatement
	CreateExpression
	CurryExpression
	DestroyStatement
	DoUntilStatement
	DoWhileStatement
	EnumDeclaration
	EnumExpression
	EnumMember
	ExportDeclaration
	ExportDeclarationSpecifier
	ExportNamedSpecifier
	ExportPropertiesSpecifier
	ExportWildcardSpecifier
	ExternDeclaration
	ExternOrRequireDeclaration
	FieldDeclaration
	ForFromStatement
	ForInStatement
	ForOfStatement
	ForRangeStatement
	FunctionDeclaration
	FunctionExpression
	Identifier
	IfExpression
	IfStatement
	ImplementDeclaration
	ImportArguments
	ImportDeclaration
	ImportDeclarator
	ImportNamespaceSpecifier
	ImportReference
	ImportSpecifier
	IncludeAgainDeclaration
	IncludeDeclaration
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
	SequenceExpression
	ShorthandProperty
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
	TryStatement
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
	Arguments = 1
	Block
	Expression
	Identifier
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
	IncrementPostfix
	IncrementPrefix
	Negation
	Negative
	Spread
} // }}}