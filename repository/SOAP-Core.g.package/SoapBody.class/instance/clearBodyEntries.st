actions
clearBodyEntries
	self bodyEntries
		do: [:each | each parent: nil].
	self bodyEntries: nil