utility
stop: transportNames 
	"SoapServerSetup stop: #(http)"
	transportNames
		do: [:each | 
			| setUp | 
			setUp := SoapServerSetupMap at: each.
			setUp isNil
				ifFalse: [setUp stop]]