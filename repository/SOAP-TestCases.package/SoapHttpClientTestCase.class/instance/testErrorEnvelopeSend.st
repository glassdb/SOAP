testing
testErrorEnvelopeSend
	
	| curPort retXML envelope body prefix fault |
	SoapServerSetup startOnly: #(http).
	SoapCallTestCase waitAMoment.
	SoapServiceHandler default add: self simpleService.
	curPort := SoapSetting defaultPortAt: #http.
	
	retXML := (SoapHttpClient url: 'http://localhost:', curPort printString, '/' ) send: self errorEnvelope.
	envelope := SoapEnvelopeBuilder new buildSoapEnvelopeFromXmlString: retXML.
	
	self should:[envelope isKindOf: SoapEnvelope].
	body := envelope body.
	self should:[ body hasFault].
	fault := body fault.
	prefix := SoapConstants soapEnvPrefixColon.
	self should:[ fault name asString = (prefix, 'Fault')].
	self should:[ fault faultcode asString =  (prefix,'Client')].
	self should:[ #('SoapNoSuchService: DoSomeOtherThing' 'DoSomeOtherThing') includes: fault faultstring].
	SoapServiceHandler default remove: self simpleService.