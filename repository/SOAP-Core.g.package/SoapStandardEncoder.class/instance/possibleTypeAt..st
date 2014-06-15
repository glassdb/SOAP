private
possibleTypeAt: typeName 
	^ self typeDict
		at: typeName
		ifAbsent: [self complexTypeDict
				at: typeName
				ifAbsent: []]