accessing
name
	name isNil
		ifTrue: [prefixName := SoapConstants soapEnvPrefix.
			localName := self class localName.
			name := prefixName , ':' , localName].
	^ name