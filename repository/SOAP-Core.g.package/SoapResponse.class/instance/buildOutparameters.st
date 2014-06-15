private
buildOutparameters
	| retValues retStruct sz outparams |
	retValues := self envelope body bodyEntries.
	retValues ifEmpty: [^retValues].

	retStruct := retValues first.
	sz := retStruct size.
	sz <= 1
		ifTrue: [^ #()].
	
	outparams := OrderedCollection new.
	2
		to: sz
		do: [:idx | outparams
				add: (self
						extractDecodedValueFrom: (retStruct children at: idx))].
	^outparams