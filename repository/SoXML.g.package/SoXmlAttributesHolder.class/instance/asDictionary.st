actions
asDictionary
	| dict |
	dict := Dictionary new.
	self namespaceDict
		keysAndValuesDo: [:k :v | dict at: k put: v].
	self otherDict
		keysAndValuesDo: [:k :v | dict at: k put: v].
	^ dict