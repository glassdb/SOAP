tests
testEchoStructArray

	| a b |
	a := {
		(SOAPStruct new) 
			varFloat: 2.35636543E-13; 
			varInt: 1285972920; 
			varString: 'This is struct string #0, rn=1001353572';
			yourself. 
		(SOAPStruct new) 
			varFloat: 7.35771791E-11; 
			varInt: 1593596468; 
			varString: 'This is struct string #1, rn=540730132';
			yourself. 
		(SOAPStruct new) 
			varFloat: 7.23674572E-19; 
			varInt: 1963012790; 
			varString: 'This is struct string #2, rn=1730169372';
			yourself. 
		(SOAPStruct new) 
			varFloat: 8.15770207E-08; 
			varInt: 1983920236; 
			varString: 'This is struct string #3, rn=1521421066';
			yourself. 
		(SOAPStruct new) 
			varFloat: 1.17443468E-11; 
			varInt: 933022021; 
			varString: 'This is struct string #4, rn=656000476';
			yourself. 
		(SOAPStruct new) 
			varFloat: 235241392; 
			varInt: 1778282358; 
			varString: 'This is struct string #5, rn=440466666';
			yourself. 
	}.
	self assert: (b := self client echoStructArray: a) = a.