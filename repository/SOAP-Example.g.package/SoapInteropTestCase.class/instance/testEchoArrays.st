tests
testEchoArrays

	| a b x y |
	a := {1. 2. 3. 456. 78910. 111213. 8. 9. 19. 10. 11.}.
	self assert: (b := self client echoIntegerArray: a) = a.
	a := { 3.45194122E18. 8.92037106. 8.15266775E17. 1.39723443E-06. 55250456. }.
	b := self client echoFloatArray: a.
	self assert:  (x := a collect: [:each | self convertFloatForComparison: each ]) = 
				(y := b collect: [:each | self convertFloatForComparison: each ]).
	a := {
		'This is test string #0, rn=1885604167'. 
		'This is test string #1, rn=1554928573'. 
		'This is test string #2, rn=818789052'. 
		'This is test string #3, rn=1446438176'. 
		'This is test string #4, rn=1196585153'. 
		'This is test string #5, rn=1881130472'. 
		'This is test string #6, rn=1728162190'. 
		'This is test string #7, rn=1858559490'. 
		'This is test string #8, rn=569846004'.
	}.
	self assert: (b := self client echoStringArray: a) = a.
