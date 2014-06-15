testing
testAddBodyEntries
	| body ent1 ent2 |
	body := SoapBody new.
	ent1 := SoapWrapElement named: 'request1' withPrefix: 'm1'.
	ent1 declareNamespace: 'm1' uri: 'urn:request:1'.
	body addBodyEntry: ent1.
	ent2 := SoapWrapElement named: 'request1' withPrefix: 'm2'.
	ent2 declareNamespace: 'm2' uri: 'urn:request:2'.
	body addBodyEntry: ent2.
	
	self should:[ent1 parent =  body].
	self should:[ent2 parent =  body].
	
	self should:[(body bodyEntries at: 1 ) = ent1].
	self should:[(body bodyEntries at: 2 ) = ent2].