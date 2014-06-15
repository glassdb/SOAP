testing
testEncodeBase64Binary
	"self debug: #testEncodeBase64Binary"
	| enc ret bytes |
	enc := SoapEncoder new.

	bytes := ByteArray with: 1 with: 2 with: 3 with: 4.
	ret := enc encodeSoapVariable: (SoapVariable name: 'binbin' value: bytes).
	self should: [ (ret getAttributeNamed: 'xsi:type') = 'xsd:base64Binary'].
	self should: [ ret value = 'AQIDBA=='].