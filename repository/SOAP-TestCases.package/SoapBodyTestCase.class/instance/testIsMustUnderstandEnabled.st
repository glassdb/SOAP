testing
testIsMustUnderstandEnabled
	| body |
	body := SoapBody new.
	self should:[body isMustUnderstandEnabled].