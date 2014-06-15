actions
addFault
	| fa |
	fa := SoapFault new.
	fa parent: self.
	self fault: fa.
	^fa