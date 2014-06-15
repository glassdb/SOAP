actions
transcriptShow: aString 
	[Transcript cr; show: '#soap> ' , aString.
	^ true]
		on: Error
		do: [:ex | 
			Transcript cr; show: '#soap> ' , ex description.
			^ false]