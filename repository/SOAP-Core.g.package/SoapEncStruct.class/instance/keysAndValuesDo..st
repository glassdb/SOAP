actions
keysAndValuesDo: aBlock
	self keys do: [:eachKey |
		aBlock value: eachKey value: (self dictionary at: eachKey ifAbsent:[])
	]