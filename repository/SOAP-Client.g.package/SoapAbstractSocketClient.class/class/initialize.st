class initialization
initialize
	"SoapAbstractSocketClient initialize"
	showLog := false.
	resolveTimeout := 20.

	self initHostAddressCache.
	self initConnectionPool.
	
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self