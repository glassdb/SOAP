private
localHost
	"Squeak specific"
	localHost isNil
		ifTrue: [[localHost := NetNameResolver nameForAddress: NetNameResolver localHostAddress timeout: 30]
				on: Error
				do: [:ex | 
					localHost := 'localhost'.
					ex return]].
	^ localHost