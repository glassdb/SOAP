instance creation
fromXmlElement: anXmlWrapElement 
	"Create a new SoapElement that wraps the passed XML element 
	or one of its children"
	| inst |
	inst := self named: anXmlWrapElement name.
	self addAttributesOf: anXmlWrapElement to: inst.
	self addSubElementsOf: anXmlWrapElement to: inst.
	^ inst