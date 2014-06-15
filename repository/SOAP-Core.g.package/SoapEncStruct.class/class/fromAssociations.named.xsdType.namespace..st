instance-creation-basic
fromAssociations: keysAndValues named: elemName xsdType: xsdType namespace: namespaceURI 
	| inst |
	inst := self new name: elemName;
				 xsdType: xsdType;
				 namespace: namespaceURI;
				 yourself.
	keysAndValues
		do: [:assoc | inst at: assoc key put: assoc value].
	^ inst