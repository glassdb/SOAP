accessing
isPrintCDATA
	isPrintCDATA isNil ifTrue:[ isPrintCDATA := self class isPrintCDATA].
	^isPrintCDATA