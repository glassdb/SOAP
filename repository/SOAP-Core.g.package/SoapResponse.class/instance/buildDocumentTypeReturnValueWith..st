private
buildDocumentTypeReturnValueWith: methodElem 
	| decoder retValues |

	decoder := self decoderFrom: methodElem.
	retValues := methodElem children.
	
	(retValues size = 1 and: [(decoder isArrayType: methodElem) not])
		ifTrue: [^ self extractDecodedValueFrom: retValues first].

	^ retValues
		collect: [:each | self extractDecodedValueFrom: each]