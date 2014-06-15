actions
debugReturn: aSoapMessage 

	self class showLog  
		ifTrue: [
			| envelope context |
			envelope := aSoapMessage envelope.
			context := aSoapMessage context.
			Transcript cr; cr; show: '##'; show: super printString;
						show: ' Client:Return:{'; cr; show: envelope printString; cr; show: '}'.
			Transcript cr; show: '-> with ->'.
			Transcript cr; show: context printString]