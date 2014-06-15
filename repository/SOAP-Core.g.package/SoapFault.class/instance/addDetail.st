actions
addDetail
	| de |
	de := SoapFaultDetail new.
	de parent: self.
	self detail: de.
	^de