actions
xsiType

	| pat |
	pat := '*:', (SoXmlUtil prefixAndLocalNameFrom: SoapConstants xsiType) last.
	self attributesHolder otherDict keysAndValuesDo: [:key :value |
		(pat match: key) ifTrue: [ ^value ]].
	^nil