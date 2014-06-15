instance creation
default
	| handlerName |
	handlerName := self useTestServiceHandler ifTrue: [#test] ifFalse: [#default].
	^self named: handlerName