class initialization
initTypeDict
	"Apparently this mapping is not so sophisticted. "
	"##TODO: Implement more serious mapping method "
	| pref |
	typeDict := super initTypeDict.
	pref := SoapConstants xsdPrefixColon.
	#(
	#(#any #String)
	#(#anyType #String)
	#(#time #String)
	#(#boolean #Boolean)
	#(#float #Float)
	#(#double #Double)
	#(#integer #Integer)
	#(#positiveInteger #LargePositiveInteger )
	#(#negativeInteger #LargeNegativeInteger )
	#(#int #Integer)
	#(#string #String)
	) do:[:each | typeDict at: (pref, each first) asSymbol put: each last].
	^typeDict