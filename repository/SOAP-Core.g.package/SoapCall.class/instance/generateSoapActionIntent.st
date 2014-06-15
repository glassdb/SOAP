private
generateSoapActionIntent
	"Especially for .Net server - that requires this type of SOAPAction format"
	self soapAction: (self namespace, '/', self methodName).