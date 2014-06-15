testing
testEncodeReferredValue
	"self debug: #testEncodeReferredValue"
	| enc var1 var2 var3 ret1 ret2 ret3 |
	
	enc := SoapEncoder new. 

	var1 := SoapVariable name: 'master' value: #MASTER.
	var2 := SoapVariable name: 'valueRef' href:  var1.
	var2 value: 1.
	var3 := SoapVariable name: 'valueRefRef' href:  var2.
	var3 value: 2.
	
	ret1 := enc encodeSoapVariable: var1.
	self should: [ ret1 name = 'master'].
	self should: [ (ret1 getAttributeNamed: 'xsi:type') = 'xsd:string'].
	self should: [ ret1 value = 'MASTER'].
	self should: [ ret1 hasAttributeNamed: 'id'].
	
	ret2 := enc encodeSoapVariable: var2.
	self should: [ ret2 name = 'valueRef'].
	self shouldnt: [ (ret2 hasAttributeNamed: 'xsi:type')].
	self should: [ ret2 value isNil].
	self should: [ ret2 hasAttributeNamed: 'href'].
	self should: [ (ret2 getAttributeNamed: 'href') = ('#', (ret1 getAttributeNamed: 'id')) ].

	ret3 := enc encodeSoapVariable: var3.
	self should: [ ret3 name = 'valueRefRef'].
	self shouldnt: [ (ret3 hasAttributeNamed: 'xsi:type')].
	self should: [ ret3 value isNil].
	self should: [ ret3 hasAttributeNamed: 'href'].
	self should: [ (ret3 getAttributeNamed: 'href') = ('#', (ret2 getAttributeNamed: 'id')) ].