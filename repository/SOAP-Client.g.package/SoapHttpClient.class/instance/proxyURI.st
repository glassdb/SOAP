accessing
proxyURI

	| proxy |
	(self proxyPort == nil and: [ self proxyServer == nil ]) ifTrue: [ ^self reqURI ].
	proxy := HyURI fromStream: self reqURI asString readStream.
	self proxyPort ~~ nil ifTrue: [ proxy portNumber: self proxyPort ].
	self proxyServer ~~ nil ifTrue: [ proxy hostname: self proxyServer ].
	^proxy