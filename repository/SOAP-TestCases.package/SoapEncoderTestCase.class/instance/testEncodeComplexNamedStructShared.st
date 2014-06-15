testing
testEncodeComplexNamedStructShared
	"self debug: #testEncodeComplexNamedStructShared"
	| element elems resultStruct enc var ret retResultElems retResultElem retResultElems2 |
	element := SoapEncStruct
				fromAssociations: {#summary -> 'summary of squeak'}
				named: 'ResultElement'.
	elems := SoapEncArray
				fromArray: (Array with: element)
				named: 'resultElements'
				elementType: 'ResultElement'.
	resultStruct := SoapEncStruct
				fromAssociations: {#query -> 'squeak'. #resultElements -> elems. #resultElements2->elems}
				named: 'SearchResult'.
	self should: [resultStruct keys asArray = #('query' 'resultElements' 'resultElements2')].
	enc := SoapEncoder new useSharedValues: true.
	var := SoapVariable name: 'SearchResult' value: resultStruct.
	ret := enc encodeSoapVariable: var.
	self should: [ret name = 'SearchResult'].
	retResultElems := ret findChildNamed: 'resultElements'. 
	self should: [retResultElems notNil].
	self should:[(ret findChildNamed: 'query') value = 'squeak'].
	self should:[retResultElems isArrayType].
	self should:[retResultElems children size = 1].
	self should:[retResultElems children size = 1].
	retResultElem := retResultElems findChildNamed: 'item'.
	self should: [retResultElem notNil].
	self should: [retResultElem notNil].
	self should: [retResultElem xsiType = nil].
	self should: [(retResultElem findChildNamed: 'summary') value = 'summary of squeak'].

	retResultElems2 := ret findChildNamed: 'resultElements2'. 
	self should: [ '#', retResultElems id asString = retResultElems2 href].