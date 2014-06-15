class initialization
initHostAddressCache
	"SoapAbstractSocketClient initHostAddressCache"
	HostAddressCache := Dictionary new.
	HostAddressCache at: 'localhost' put: (ByteArray with: 127 with: 0 with: 0 with: 1)