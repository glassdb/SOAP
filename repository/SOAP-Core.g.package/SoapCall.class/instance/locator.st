accessing
locator
	locator isNil ifTrue: [ locator := SoapCallEntry local locator].
	^locator