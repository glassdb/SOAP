actions
findSubElementLocalNamed: anElemName
	^self subElements detect: [:each | each localName = anElemName] ifNone:[]