class initialization
initTypeDict
	"Apparently this mapping is not so sophisticted. "
	"##TODO: Implement more serious mapping method "
	| pref |
	typeDict := super initTypeDict.
	pref := SoapConstants xsdPrefixColon.
	#(
	#(#double #Float)
	#(#decimal #ScaledDecimal)
	#(#base64Binary #ByteArray)
	#(#long #LargePositiveInteger)
	#(#dateTime #DateAndTime)
	) do:[:each | typeDict at: (pref, each first) asSymbol put: each last]. "for Poor Squeak!" 
	^typeDict