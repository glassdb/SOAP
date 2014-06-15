utility
start: transportNames 
	"SoapServerSetup start: #(http) "
	transportNames
		do: [:each | 
			| setUp | 
			setUp := SoapServerSetupMap at: each.
			setUp isNil
				ifFalse: [setUp stop; start]]