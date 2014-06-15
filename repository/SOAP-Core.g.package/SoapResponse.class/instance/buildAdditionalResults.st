private
buildAdditionalResults
	| retValues sz |
	retValues := self envelope body bodyEntries.
	retValues
		ifEmpty: [^ retValues].
	sz := retValues size.
	sz <= 1
		ifTrue: [^ #()].
	2
		to: sz
		do: [:idx | self
				extractDecodedValueFrom: (retValues at: idx)]