private
shouldShareValue: soapVarValue
	"Currently, Boolean and Number types are not shared"
	soapVarValue == true ifTrue: [^false].
	soapVarValue == false ifTrue: [^false].
	soapVarValue isNumber ifTrue: [^false].
	
	^true