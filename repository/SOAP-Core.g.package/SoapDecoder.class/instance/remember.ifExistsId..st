private
remember: object ifExistsId: aSoapXmlElement
	aSoapXmlElement id ifNotNilDo: [:identifier | self referenceDict at: identifier put: object]