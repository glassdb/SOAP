private
objectFromString: aString
	| byteStr oStr |
	byteStr := (Base64MimeConverter mimeDecodeToBytes: (ReadStream on: aString)).
	oStr := self defaultObjectDecoderClass on: byteStr.
	^oStr next