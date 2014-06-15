instance creation-shotrcut
on: anObject named: serviceName
	| inst |
	inst := self implementor: anObject selector: serviceName asSymbol.
	inst setSignatureNamed: serviceName asString.
	^ inst