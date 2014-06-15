testing
testEncodingObject
	
	| enc obj ret byteStr oStr val |
	enc := SoapSqEncoder new.
	obj := #(1 2 #(#hello 'Smalltalk') 3).
	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: obj).
	self should: [ ret name = 'auau'].
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'Squeak-ENC:ReferenceStream'].
	
	byteStr := (Base64MimeConverter mimeDecodeToBytes: (ReadStream on: ret value)).
	oStr := ReferenceStream on: byteStr.
	val := oStr next.

	self should: [ obj = val].