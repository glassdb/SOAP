accessing
subElements
	subElements isNil ifTrue: [subElements := OrderedCollection new].
	^subElements