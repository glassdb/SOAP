private
decodeComplexXmlElementTyped: itemType value: aSoapXmlElement 
	| stClass |
	self customComplexTypeDict at: (self keyFor: aSoapXmlElement) ifPresent: [:p | ^p fromXmlElement: aSoapXmlElement with: self].
	
	stClass := self complexTypeDict at: aSoapXmlElement xsiType
				ifAbsent: [self class environment
					at: (self keyFor: aSoapXmlElement)
					ifAbsent: [self class environment
						at: (SoXmlUtil localNameFrom: aSoapXmlElement xsiType)
						ifAbsent: [
							itemType ~~ nil
								ifTrue: [self complexTypeDict at: itemType ifAbsent: []]
								ifFalse: [ nil ]]]].
	stClass isNil
		ifTrue: [| structDict | 
			structDict := Dictionary new.
			aSoapXmlElement children
				do: [:eachChild | structDict
						at: (SoXmlUtil localNameFrom: eachChild name)
						put: (self basicDecodeXmlElement: eachChild)].
			^ structDict]
		ifFalse: [| structInst allInstVarNames | 
			structInst := stClass new.
			allInstVarNames := stClass allInstVarNames.
			aSoapXmlElement children
				do: [:eachChild | structInst
						instVarAt: (allInstVarNames
								indexOf: ((SoXmlUtil localNameFrom: eachChild name) withFirstCharacterDownshifted))
						put: (self basicDecodeXmlElement: eachChild)].
			^ structInst]