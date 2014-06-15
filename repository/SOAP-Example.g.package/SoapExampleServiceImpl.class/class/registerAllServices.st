registering
registerAllServices
	"SoapExampleServiceImpl registerAllServices"
	SoapServerSetup startAll.
	self registerHelloWorld.
	self registerTimeNow.
	self registerReverseString.
	self registerTranscriptShow.
	self registerBrowseClassDefinition.
	self registerReverseArray.
	self registerReturnComplexDictionary