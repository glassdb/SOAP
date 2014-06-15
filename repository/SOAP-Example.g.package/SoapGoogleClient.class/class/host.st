accessing
host
	host isNil ifTrue: [host := 'api.google.com'].
	^host