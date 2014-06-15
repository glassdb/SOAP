printing
printXmlContentsOn: aStream indent: level 
	self isEmptyBody
		ifFalse: 
			[self value isNil ifFalse: [self privPrintXmlContentOn: aStream ].
			children isNil ifFalse:["ugly - but for performance"
			aStream cr.
			self privPrintChildrenOn: aStream indent: level + 1.
			level timesRepeat: [aStream space]]].