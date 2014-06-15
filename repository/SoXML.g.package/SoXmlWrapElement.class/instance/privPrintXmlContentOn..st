private
privPrintXmlContentOn: aStream 
	self isPrintCDATA
		ifTrue: 
			[aStream nextPutAll: '<![CDATA['.
			aStream nextPutAll: self value.
			aStream nextPutAll: ']]>']
		ifFalse: [self writeValue: self value on: aStream.].