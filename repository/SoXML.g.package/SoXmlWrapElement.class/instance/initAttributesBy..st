private-init
initAttributesBy: aDictionary
	aDictionary keysAndValuesDo:[:k :v |
		self putAttributeNamed: k value: v.
	].