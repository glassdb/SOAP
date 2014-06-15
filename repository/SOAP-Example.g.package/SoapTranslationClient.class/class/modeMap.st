accessing
modeMap
	modeMap isNil ifTrue: [ modeMap := self prepareModeMap].
	^modeMap