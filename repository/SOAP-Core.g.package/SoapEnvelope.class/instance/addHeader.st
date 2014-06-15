actions
addHeader
	| he |
	he := SoapHeader new.
	he parent: self.
	self header: he.
	^he