utility
startOnly: transportNames 
	"SoapServerSetup startOnly: #(http) "
	| stops |
	stops := SoapServerSetupMap implDict keys removeAll: transportNames; yourself.
	self stop: stops.
	self start: transportNames