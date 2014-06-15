private
useSharedValuesWhile: block
	| origUseSharedValues |
	origUseSharedValues := self useSharedValues.
	self useSharedValues: true.
	block value.
	self useSharedValues: origUseSharedValues