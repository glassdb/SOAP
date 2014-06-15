testing
testPutAttributes
	| attribsHolder |
	attribsHolder := SoXmlAttributesHolder new.
	attribsHolder putAttribute: #('key1' 'val1').
	self should: ['val1' = (attribsHolder getAttributeNamed: 'key1')].
	attribsHolder putAttribute: #('key1' 'val2').
	self shouldnt: ['val1' = (attribsHolder getAttributeNamed: 'key1')].
	self should: ['val2' = (attribsHolder getAttributeNamed: 'key1')].