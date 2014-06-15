private
stringFromObject: anObject
	| file con |
	file := RWBinaryOrTextStream
				on: (String new).
	file binary.
	(self defaultObjectEncoderClass on: file)
		nextPut: anObject.
	con := Base64MimeConverter mimeEncode: file reset.
	file close.
	^ con contents