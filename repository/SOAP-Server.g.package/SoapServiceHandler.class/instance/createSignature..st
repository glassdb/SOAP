private
createSignature: aSoapEnvelope
	| bodyEntries mElem name argNames sig |
	self initReferenceDict.
	bodyEntries := aSoapEnvelope body bodyEntries.
	mElem :=  bodyEntries first.
	name := mElem shortName asSymbol. 
	argNames := mElem children
				collect: [:each | each shortName asSymbol].
	sig := SoapServiceSignature name: name paramNames: argNames.
	mElem children do: [:each | sig valueAt: each shortName asSymbol put: (self extractDecodedValueFrom: each ) ].
	bodyEntries size > 1 ifTrue: [ 2 to: bodyEntries size do: [:idx | self extractDecodedValueFrom: (bodyEntries at: idx)]].
	^sig