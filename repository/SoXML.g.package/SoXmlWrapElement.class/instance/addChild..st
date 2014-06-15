actions
addChild: anXMLEleemnt
	anXMLEleemnt isNil ifTrue:[^nil].
	anXMLEleemnt parent: self.
	^self children add: anXMLEleemnt.