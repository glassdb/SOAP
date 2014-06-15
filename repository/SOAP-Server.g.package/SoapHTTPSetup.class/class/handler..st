accessing
handler: aHandler

	aHandler == nil 
		ifTrue: [ 
			handler := nil.
			^self ].
	handler := TransientValue value: aHandler