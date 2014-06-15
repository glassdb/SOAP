accessing
handler
	(handler isNil or: [ handler value isNil ]) ifTrue: [ handler := TransientValue value: self defaultHandler ].
	^handler value