private
generateId
	id := (Random new next * 1000000) truncated printString.
	^id