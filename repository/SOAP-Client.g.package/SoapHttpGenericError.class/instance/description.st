exceptionDescription
description
	"Return a textual description of the exception."

	| desc httpErrorDesc mt |
	desc := self class name asString.
	httpErrorDesc := self errorCode printString, ' ', (ResultMessageTable at: self errorCode ifAbsent:['']).
	desc := desc, ': ', httpErrorDesc.
	^(mt := self messageText) == nil
		ifTrue: [desc]
		ifFalse: [desc, ': ', mt]