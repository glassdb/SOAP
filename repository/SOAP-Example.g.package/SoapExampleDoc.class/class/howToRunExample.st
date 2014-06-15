documentation
howToRunExample
^'1:
	Register services.
	"SoapExampleServiceImpl registerAllServices"

2:
	Call services by SoapExampleClient (print it)
	"SoapExampleClient new callHelloWorld"
	"SoapExampleClient new callTimeNow"
	"SoapExampleClient new callReverseString: self name printString"
	"SoapExampleClient new callTranscriptShow: self name printString"
	"SoapExampleClient new callBrowseClassDefinition: #Array"
	"SoapExampleClient new callReverseArray: #(1 #two 3.0)"
	"SoapExampleClient new callReturnComplexDictionary"

	(If you register services in some remote machine, you have to set class inst var "hostAddress".)
	"SoapExampleClient hostAddress: #yourServerName"

	(If you register services in a different port number other than default 8823)
	Server Side: "SoapSetting defaultPort: 1212"
	Client Side: "SoapSetting defaultSendingPort: 1212" or "SoapExampleClient port: 1212"(Example only)

3:
	If you would like to see raw XMLs, do it. (Open Transcript.)
	"SoapSetting showClientLog: true" 
	"SoapSetting showServerLog: true" 
	
	If you would like to see raw HTML headers for debugging, do it. (Open Transcript.)
	"SoapSetting showClientLogHttpLevel: true"

4:
	Multiple transport protocols are supported in SoapCore. Default is well known HTTP. 
	But you can try another protocol, SQTP (Squeak Transport Protocol).
	SQTP is fast in sending bulky data (more than approximately 700 bytes).
	
	First check your server is running what transport protocols.
	"SoapExampleServiceImpl runningTransportDescriptions"

	Change the default transport protocol in the client side.
	"SoapExampleClient transport: #sqtp"	"SoapExampleClient port: 4649"
	"SoapExampleClient transport: #http"	"SoapExampleClient port: 8823"
	
	Call the services, especially #reverseString: ; you can see the difference.

---
MU 10/6/2002 00:24
'