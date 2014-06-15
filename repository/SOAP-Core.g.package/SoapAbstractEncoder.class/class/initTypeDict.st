class initialization
initTypeDict
	"Apparently this mapping is not so sophisticted. "
	"##TODO: Implement more serious mapping method "
	| pref |
	typeDict := super initTypeDict.
	pref := SoapConstants xsdPrefixColon.
	#(
	#(#Boolean #boolean)
	#(#Float #float)
	#(#Double #double)
	#(#SmallDouble #double)
	#(#Integer #integer)
	#(#SmallInteger #integer)
	#(#LargePositiveInteger #positiveInteger)
	#(#LargeNegativeInteger #negativeInteger)
	#(#String #string)
	#(#ByteString #string)
	) do:[:each | typeDict at: each first put: (pref, each last)].
	^typeDict