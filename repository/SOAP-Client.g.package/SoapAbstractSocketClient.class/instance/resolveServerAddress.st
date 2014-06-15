private
resolveServerAddress
	serverAddress := self cachedAddressFor: self host.
	serverAddress isNil
		ifTrue: [self class useHostAddressCache
				ifTrue: [self class hostAddressCache
						removeKey: host
						ifAbsent: []].
			SoapCannotResolveServer signal: 'Could not resolve the server named: ' , self host]