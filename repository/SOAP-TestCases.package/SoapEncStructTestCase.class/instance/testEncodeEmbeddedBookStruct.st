testing
testEncodeEmbeddedBookStruct
	"self debug: #testEncodeEmbeddedBookStruct"
	
	| address person book elem1 |
	address := SoapEncStruct fromAssociations: {#email-> 'mailto:henryford@hotmail.com'. #web->'http://www.henryford.com'}.
	person := SoapEncStruct fromAssociations: {#name-> 'My Life and Work'. #address->address} named: 'e:Person'.
	book := SoapEncStruct fromAssociations: {#title-> 'My Life and Work'. #author->person} named: 'e:Book'.
	

	elem1 := (SoapVariable name: 'e:Book' value: book ) asXmlElement.

	self should: [elem1 name = 'e:Book'].
	self should: [elem1 children size = 2].
	person := elem1 findChildNamed: 'author'. 
	self should: [person name = 'author'].
	self should: [person children size = 2].
	address := person findChildNamed: 'address'. 
	self should: [address name = 'address'].
	self should: [address children size = 2].
	self should: [address firstChild value = 'mailto:henryford@hotmail.com' ].