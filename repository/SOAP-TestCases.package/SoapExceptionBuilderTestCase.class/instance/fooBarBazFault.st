fixtures
fooBarBazFault
	| soapFault  details stErrorClass messageText detail | 
	soapFault := SoapFault new.
	details := SoapWrapElement named: 'details' withPrefix: 'e'.
	stErrorClass := details createChildNamed: 'ErrorClass'.
	stErrorClass value: 'FooBarBaz'.
	messageText := details createChildNamed: 'messageText'.
	messageText value: 'invalid not existing class'.
	detail := soapFault addDetail.
	detail addSubElement: details.
	^soapFault