actions
addBody
	| bo |
	bo := SoapBody new.
	bo parent: self.
	self body: bo.
	^bo