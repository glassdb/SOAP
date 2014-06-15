actions
stop
	handler isNil
		ifFalse: [self handler stop].
	handler := nil