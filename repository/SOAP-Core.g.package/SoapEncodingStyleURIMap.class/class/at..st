actions
at: anAriasSymbol
	^self ariasURIDict at: anAriasSymbol ifAbsent:[SoapNoSuchEncodingArias signal: anAriasSymbol].