actions
startOn: port
	self stop.
	self handler: (self defaultHandlerOn: port).
	^[self handler start] on: Error do: [:ex | self handler stop].