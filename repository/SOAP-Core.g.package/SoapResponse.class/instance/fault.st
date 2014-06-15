accessing
fault
	fault isNil ifTrue: [fault := self envelope body fault].
	^fault