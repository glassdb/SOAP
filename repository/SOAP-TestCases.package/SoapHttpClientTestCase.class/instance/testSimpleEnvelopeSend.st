testing
testSimpleEnvelopeSend
	
	"SoapHttpClientTestCase debug: #testSimpleEnvelopeSend"
	| curPort retXML envelope body method |
	SoapServerSetup startOnly: #(http).
	SoapCallTestCase waitAMoment.
	SoapServiceHandler default add: self simpleService.
	curPort := SoapSetting defaultPortAt: #http.
	
	retXML := (SoapHttpClient url: 'http://localhost:', curPort printString, '/' ) send: self simpleEnvelope.
	envelope := SoapEnvelopeBuilder new buildSoapEnvelopeFromXmlString: retXML.
	
	self should:[envelope isKindOf: SoapEnvelope].
	body := envelope body.
	self shouldnt:[ body hasFault].
	method := body bodyEntries first.
	self should:[ method name = #'m:addResponse'].
	self should:[ (method findChildNamed: #'result' ) value = 'newElement'].
	
	SoapServiceHandler default remove: self simpleService.