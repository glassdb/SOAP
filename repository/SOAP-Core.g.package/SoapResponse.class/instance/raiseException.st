actions
raiseException
	"If you would like to details, do it: (self fault inspect)" 
	self isFault ifTrue: [self buildException signal].