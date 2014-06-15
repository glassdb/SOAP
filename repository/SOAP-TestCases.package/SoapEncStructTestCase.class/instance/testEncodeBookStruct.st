testing
testEncodeBookStruct
	"self debug: #testEncodeBookStruct"
	| struct1 elem1 children struct2 elem2 elem3 |
	struct1 := SoapEncStruct fromAssociations: {#author->'Henry Ford'.
			#preface->'Prefatory text'. #intro->'This is a book.' }.

	elem1 := (SoapVariable name: 'e:Book' value: struct1 ) asXmlElement.

	self should: [elem1 name = 'e:Book'].
	self should: [elem1 size = 3].
	children := elem1 children.
	self should: [children first name = 'author'].
	self should: [children first value = 'Henry Ford'].
	self should: [children second name = 'preface'].
	self should: [children second value = 'Prefatory text'].
	self should: [children third name = 'intro'].
	self should: [children third value = 'This is a book.'].


	struct2 := SoapEncStruct fromAssociations: {#author->'Henry Ford'.
			#preface->'Prefatory text'. #intro->'This is a book.' } named: nil.
	elem2 := (SoapVariable name: 'e:Book' value: struct2 ) asXmlElement.

	self should: [elem2 name = 'e:Book'].
	self should: [elem2 size = 3].
	children := elem2 children.
	self should: [children first name = 'author'].
	self should: [children first value = 'Henry Ford'].
	self should: [children second name = 'preface'].
	self should: [children second value = 'Prefatory text'].
	self should: [children third name = 'intro'].
	self should: [children third value = 'This is a book.'].

	elem3 := (SoapVariable name: 'e:Book' value: struct2 xsdType: nil namespace: 'http://auau.com') asXmlElement. 
	self should: [elem3 name = 'e:Book'].
	self should: [elem3 size = 3].
	self should: [elem3 declaredNamespacePrefixes includes: 'e'].
	self should: [(elem3 declaredNamespaceURIFor: 'e')  = 'http://auau.com'].
	children := elem3 children.
	self should: [children first name = 'author'].
	self should: [children first value = 'Henry Ford'].
	self should: [children second name = 'preface'].
	self should: [children second value = 'Prefatory text'].
	self should: [children third name = 'intro'].
	self should: [children third value = 'This is a book.'].