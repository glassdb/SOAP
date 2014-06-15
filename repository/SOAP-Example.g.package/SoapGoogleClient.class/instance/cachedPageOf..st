actions
cachedPageOf: urlString
	| params resp |
	params := OrderedCollection with: self licenseKey.
	params add: urlString.
	resp := self doGetCachedPage invokeWithValues: params.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue asString]