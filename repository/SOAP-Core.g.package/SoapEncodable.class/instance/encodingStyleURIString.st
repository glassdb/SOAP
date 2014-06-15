actions
encodingStyleURIString
	| uris wStr |
	uris := self encodingStyleURIs.
	wStr := WriteStream
				on: (String new: 64).
	uris size = 1
		ifTrue: [wStr nextPutAll: uris first]
		ifFalse: [self encodingStyleURIs
				do: [:each | wStr nextPutAll: each;
						 nextPut: Character space]].
	^ wStr contents