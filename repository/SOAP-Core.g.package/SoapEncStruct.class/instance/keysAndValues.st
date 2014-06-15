actions
keysAndValues
	| ord |
	ord := OrderedCollection new.
	self keysAndValuesDo: [:k :v |
		ord add: k->v
	].
	^ord