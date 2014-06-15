testing
testElementsWithoutTexts
	
	| elem1 elems1 elem2 elems2 |
	elem1 :=self simpleXmlElement.
	elems1 := SoXmlUtil elementsWithoutTextsFrom: elem1.
	elem2 :=self simpleXmlElementWithText.
	elems2 := SoXmlUtil elementsWithoutTextsFrom: elem2.
	self should: [elems1 size = elems2 size].
	self should: [elems1 printString  = elems2 printString]