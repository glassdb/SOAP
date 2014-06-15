exceptionDescription
description
	| desc |
	desc := super description.
	self faultcode isNil ifFalse: [desc := desc, ':', self faultcode].
	self faultstring isNil ifFalse: [desc := desc, '#', self faultstring].
	^desc