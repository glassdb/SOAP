private
writeValue: aCharacterArray on: aStream betweenTag: aTagString
	"ToDo: check illegal characters"
	aStream nextPutAll: ('<', aTagString, '>').
	SoXmlUtil writeXmlText: aCharacterArray on: aStream.
	aStream nextPutAll: ('</', aTagString, '>').