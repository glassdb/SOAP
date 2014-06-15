testing
testDetailedFault
	| fault detail myErrors myErrors2 message errorcode |
	fault := SoapFault client faultstring: 'Client Error!'.
	detail := fault addDetail.
	myErrors := detail addSubElement: (SoapWrapElement named: 'myErrors' withPrefix: 'e').
	myErrors declareNamespace: 'e' uri: 'http://www.mars.dti.ne.jp/~umejava/smalltalk/SoapOpera/errors'.
	(myErrors createChildNamed: 'message') value: 'My application didn''t work'.
	(myErrors createChildNamed: 'errorcode') value: '1001'.
	
	myErrors2 := (fault detail findSubElementNamed: 'e:myErrors'). "##Apparently more work needed##"
	message := myErrors2 children at: 1.
	errorcode := myErrors2 children at: 2.
	
	self should:[message value = 'My application didn''t work'].
	self should:[errorcode value = '1001'].