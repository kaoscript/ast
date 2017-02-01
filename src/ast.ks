/**
 * ast.ks
 * Version 0.6.0
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

export enum ModifierKind {
	Abstract = 1
	Alias
	Async
	Private
	Protected
	Public
	Rest
	Sealed
	Static
}

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
	CatchClause
	ClassDeclaration
	ClassName
	CommentBlock
	CommentLine
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
	MutatorDeclaration
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

export enum ScopeKind {
	Argument = 1
	Null
	This
}

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