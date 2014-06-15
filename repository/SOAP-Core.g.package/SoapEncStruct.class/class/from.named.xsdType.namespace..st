instance-creation-basic
from: object named: elemName xsdType: xsdType namespace: namespaceURI 

	| varNames assocs inst |
	varNames := object class allInstVarNames copyWithoutAll: object soapIgnorableInstVarNames.
	assocs := varNames collect: [:nm | nm -> (object instVarNamed: nm)].
	inst := self fromAssociations: assocs named: elemName xsdType: xsdType namespace: namespaceURI.
	inst referenceHash: object identityHash.
	^inst