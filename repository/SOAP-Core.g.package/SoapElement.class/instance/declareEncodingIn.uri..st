actions
declareEncodingIn: nameSpacePrefix  uri: uriString
	self putAttributeNamed: nameSpacePrefix, ':', SoapConstants encodingStyle value: uriString.