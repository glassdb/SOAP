private
privPrintChildrenOn: aStream indent: level
	(self privSortChildren: children) do:[ :each |
		each printXmlOn: aStream indent: level.
	]