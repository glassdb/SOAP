class initialiation
initTypeDict
	"Apparently this mapping is not mature. "
	"##TODO: Implement more serious mapping"
	| pref |
	typeDict := super initTypeDict.
	pref := SoapConstants xsdPrefixColon.
	#(
	#(#Any #any)
	#(#DateAndTime #dateTime)
	#(#Time #time)
	#(#Date #date)
	#(#Boolean #boolean)
	#(#Array #Array)
	#(#ByteArray #base64Binary)
	#(#Float #float)
	#(#Double #double)
	#(#SmallDouble #double)
	#(#Integer #integer)
	#(#SmallInteger #integer)
	#(#LargePositiveInteger #positiveInteger)
	#(#LargeNegativeInteger #negativeInteger)
	#(#Byte #byte)
	#(#String #string)
	#(#DoubleByteString #string)
	#(#QuadByteString #string)
	#(#Symbol #string)
	#(#DoubleByteSymbol #string)
	) do:[:each | typeDict at: each first put: (pref, each last) asSymbol].