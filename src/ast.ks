/**
 * ast.ks
 * Version 0.4.0
 * September 13th, 2016
 *
 * Copyright (c) 2016 Baptiste Augrain
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/
export enum AssignmentOperator { // {{{
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
	NullCoalescing
	Subtraction
} // }}}

export enum BinaryOperator { // {{{
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

export enum FunctionModifier { // {{{
	Async = 1
} // }}}

export enum Kind { // {{{
	ArrayBinding = 1
	ArrayComprehension
	ArrayExpression
	ArrayRange
	AttributeDeclaration
	AttributeExpression
	AttributeOperator
	AwaitExpression
	BinaryOperator
	BindingElement
	Block
	BreakStatement
	CallExpression
	CatchClause
	ClassDeclaration
	ClassName
	CommentBlock
	CommentLine
	ContinueStatement
	CreateExpression
	CurryExpression
	DestroyStatement
	DoUntilStatement
	DoWhileStatement
	ElseStatement
	ElseIfStatement
	EnumDeclaration
	EnumExpression
	EnumMember
	ExportAlias
	ExportDeclaration
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
	ImportDeclaration
	ImportDeclarator
	ImportReference
	ImportSpecifier
	ImportWildcardSpecifier
	IncludeDeclaration
	IncludeOnceDeclaration
	LambdaExpression
	Literal
	MemberExpression
	MethodAliasDeclaration
	MethodDeclaration
	MethodLinkDeclaration
	MixinDeclaration
	Module
	NumericExpression
	ObjectBinding
	ObjectExpression
	ObjectMember
	OmittedExpression
	Parameter
	PolyadicOperator
	RegularExpression
	RequireDeclaration
	RequireOrExternDeclaration
	ReturnStatement
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
	TemplateExpression
	TernaryConditionalExpression
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
	VariableExpression
	WhileStatement
} // }}}

export enum MemberModifier { // {{{
	Private = 2
	Protected
	Public
	Static
} // }}}

export enum ParameterModifier { // {{{
	Member = 1
	Rest
} // }}}

export enum ScopeModifier {
	Argument = 1
	Null
	This
}

export enum UnaryOperator { // {{{
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

export enum VariableModifier {
	Const = 1
	Let
}