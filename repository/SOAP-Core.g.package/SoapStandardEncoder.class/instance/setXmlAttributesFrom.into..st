private
setXmlAttributesFrom: aSoapVariable into: anXmlElement
	self setXmlElementId: aSoapVariable into: anXmlElement.
	self setXmlElementHref: aSoapVariable into: anXmlElement.
	self setXmlElementNamespace: aSoapVariable into: anXmlElement.
	self setXmlElementPrefix: aSoapVariable into: anXmlElement.