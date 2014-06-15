private
cachedAddressFor: hostName 
	"utility for fast hostAddress lookup - if not found, just return nil"
	| timeout cache |
	hostName = 'localhost'
		ifTrue: [^ #(127 0 0 1 ) asByteArray].
	timeout := self class resolveTimeout.
	self class useHostAddressCache
		ifFalse: [^self addressForName: hostName timeout: timeout].
	cache := self class hostAddressCache.
	(cache includesKey: hostName)
		ifTrue: [^ cache at: hostName]
		ifFalse: [| resolvedAddress | 
			resolvedAddress := self addressForName: hostName timeout: timeout.
			^ resolvedAddress isNil
				ifFalse: [cache at: hostName put: resolvedAddress]]