testing
testEncodingString
	| enc ret |
	enc := SoapNullEncoder new.

	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 'smalltalk').
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'Null-ENC:String'].
	self should: [ ret value = 'smalltalk'].
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: 'ruby' type: #String).
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'Null-ENC:String'].
	self should: [ ret value = 'ruby'].