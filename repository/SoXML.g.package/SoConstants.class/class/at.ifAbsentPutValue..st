private
at: aKey ifAbsentPutValue: aValue
	^self constDict at: aKey ifAbsent:[self constDict at: aKey put: aValue]