private
buildDoGoogleSearch
	| call |
	call := self newCall.
	call methodName: 'doGoogleSearch'.
	call addParameterNamed: #key.
	call addParameterNamed: #q. 
	call addParameterNamed: #start xsdType: 'xsd:int'.
	call addParameterNamed: #maxResults xsdType: 'xsd:int'.
	call addParameterNamed: #filter.
	call addParameterNamed: #restrict.
	call addParameterNamed: #safeSearch.
	call addParameterNamed: #lr.
	call addParameterNamed: #ie.
	call addParameterNamed: #oe.
	^call