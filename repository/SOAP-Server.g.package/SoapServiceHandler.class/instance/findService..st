private
findService: aSoapEnvelope 
	| mElement nm key  serv |
	mElement := aSoapEnvelope body bodyEntries first.
	nm := mElement shortName.
	key := self context targetObjectURI isEmpty
		ifTrue: [nm]
		ifFalse: [self context targetObjectURI , ':' , nm].
	serv := self serviceHome at: key.
	^ serv