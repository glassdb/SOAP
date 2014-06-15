actions
echoBase64: aByteArray

	aByteArray class == ByteArray 
		ifTrue: [ ^aByteArray asByteArray ].
	SoapError signal: 'Could not convert value to base64: ', aByteArray asString