URIs
soapEncURI
	"ToDo: swith 1.2 value: http://www.w3.org/2001/12/soap-encoding"
	^self at: #soapEncURI ifAbsentPutValue:'http://schemas.xmlsoap.org/soap/encoding/'