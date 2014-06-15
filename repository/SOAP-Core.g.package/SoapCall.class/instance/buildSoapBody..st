building envelope
buildSoapBody: aSoapBody 
	| callElem |
	callElem := self callElementFor: aSoapBody.
	self parameters
		do: [:each | callElem
				addChild: (each asXmlElement)].
	^ aSoapBody