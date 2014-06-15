printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' host: '.
	aStream print: self host.
	aStream nextPutAll: ' port: '.
	aStream print: self port.