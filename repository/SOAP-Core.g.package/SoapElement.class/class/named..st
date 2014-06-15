instance creation
named: anElementName 
	| index readStream prefixName localName |
	index := anElementName indexOf: $:.
	index = 0
		ifTrue: [SoapNoNamespacePrefix signal: 'Namespace prefix must be provided!']
		ifFalse: [readStream := anElementName readStream.
			prefixName := readStream next: index - 1.
			readStream skip: 1.
			localName := readStream next: anElementName size - index].
	(localName isEmpty
			or: [localName ~= self localName])
		ifTrue: [SoapWrongTagName signal: '"' , localName , '"' , ' must be "' , self localName , '"'].
	^ self new prefixName: prefixName;
		 localName: localName;
		 name: anElementName