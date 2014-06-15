testing
testMustUnderstand
	| header |
	header := SoapHeader new.
	self shouldnt: [header isMustUnderstandEnabled].	
	header enableMustUnderstand.
	self should: [header isMustUnderstandEnabled].	
	header disableMustUnderstand.
	self shouldnt: [header isMustUnderstandEnabled].