private
newCall
	| call |
	call := self class newCall.
	call soapAction: self soapAction.
	^call