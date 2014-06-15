private
localAddress
	"Squeak specific"
	"localAddress isNil ifTrue: [localAddress := NetNameResolver localAddressString].
	^localAddress"
	self halt