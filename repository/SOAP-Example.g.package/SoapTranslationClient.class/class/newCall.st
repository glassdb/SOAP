actions
newCall
	| call |
	call := self callEntry newCall.
	call targetObjectURI: self targetObjectURI.
	call namespace: self namespace.
	call prefix: ''.
	call useLiteral: true.
	call soapAction: 'http://www.webservicex.net/Translate'.
	^call