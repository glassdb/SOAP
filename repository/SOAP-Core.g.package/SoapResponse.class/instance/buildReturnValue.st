private
buildReturnValue
	| retValueElem methodElem |
	methodElem := self envelope body bodyEntries first.
	self style = #document
		ifTrue: [^self buildDocumentTypeReturnValueWith: methodElem]
		ifFalse: [retValueElem := methodElem findChildNamed: SoapConstants returnValueAccessor.
			retValueElem isNil
				ifTrue: [retValueElem := methodElem children isEmpty
								ifFalse: [methodElem children first]]].
	^ self extractDecodedValueFrom: retValueElem