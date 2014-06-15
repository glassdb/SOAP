actions
newCall
	| call |
	call := self callEntry newCall.
	call targetObjectURI: self targetObjectURI.
	call namespace: self namespace.
	call envelope declareNamespace: 'ns1' uri: 'http://soapinterop.org/xsd'.
	^call