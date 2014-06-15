instance creation-shotrcut
on: anObject named: serviceName paramNames: paramNames
	| inst |
	inst := self implementor: anObject selector: serviceName asSymbol.
	inst setSignatureNamed: serviceName asString paramNames: paramNames.
	^ inst