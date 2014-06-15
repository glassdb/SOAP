instance creation
fromXmlElement: aParsedXmlElement 
	"conrtol all deserialization from XMLElement"
	| inst |
	inst := self new.
	aParsedXmlElement children
		do: [:eachItem | 
			| assoc | 
			assoc := eachItem children first value -> eachItem children last value asNumber.
			inst add: assoc].
	^ inst