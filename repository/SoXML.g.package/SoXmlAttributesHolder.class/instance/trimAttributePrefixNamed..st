actions
trimAttributePrefixNamed: attribName
	| value newKey |
	value := self otherDict at: attribName ifAbsent:[].
	value isNil ifTrue: [^nil].
	newKey := self chopPrefix: attribName. 
	self removeAttributeNamed: attribName.
	^ self putAttributeNamed: newKey value: value