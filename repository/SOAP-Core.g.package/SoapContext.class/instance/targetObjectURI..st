actions
targetObjectURI: aString
	self at: #targetObjectURI put: (SoPortableUtil portableSubclass relativeURIFrom: aString).