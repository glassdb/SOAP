testing
= anOther

	^(self varInt = anOther varInt 
		and: [ self varString = anOther varString ]) 
		and: [ (self varFloat asFloat asStringUsingFormat: #(10 6 true)) = 
				(anOther varFloat asFloat asStringUsingFormat: #(10 6 true)) ]