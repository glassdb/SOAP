testing
testAsDictionary
	| attribsHolder dict |
	attribsHolder := SoXmlAttributesHolder new.
	attribsHolder putAttribute: #('key1' 'val1').
	attribsHolder putAttribute: #('key2' 'val2').
	dict := attribsHolder asDictionary.
	self should: [ ( dict at: 'key1' ) = 'val1'].
	self should: [ ( dict at: 'key2' ) = 'val2'].