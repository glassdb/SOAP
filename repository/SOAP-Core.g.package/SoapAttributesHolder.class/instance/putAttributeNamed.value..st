actions
putAttributeNamed: attribName value: attribValue
	| encs |
	"ToDo: take a more serious approach...Namespace conscious"
	encs := SoapConstants encodingStyle.
	('*:', encs match: attribName) ifTrue: [self encodingStyle: attribValue].
	super putAttributeNamed: attribName value: attribValue.