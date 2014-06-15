testing
testEncodeSharedBookStruct
	"self debug: #testEncodeSharedBookStruct"
	| address person1 person2 book1 enc elem1 auther initials |
	address := SoapEncStruct fromAssociations: {#email -> 'mailto:henryford@hotmail.com'. #web -> 'http://www.henryford.com'} named: 'e:Address'.
	person1 := SoapEncStruct fromAssociations: {#name -> 'Henry Ford'. #address -> address} named: 'e:Person'.
	person2 := SoapEncStruct fromAssociations: {#name -> 'hf'. #address -> address} named: 'e:Initials'.
	book1 := SoapEncStruct fromAssociations: {#title -> 'My Life and Work'. #author -> person1. #initials -> person2} named: 'e:Book'.
	enc := SoapEncoder new useSharedValues: true.
	elem1 := enc
				encodeSoapVariable: (SoapVariable name: 'e:Book' value: book1).
	auther := elem1 findChildNamed: 'author'.
	initials := elem1 findChildNamed: 'initials'.
	self
		should: ['#', (auther findChildNamed: 'address') id asString
				= (initials findChildNamed: 'address') href]