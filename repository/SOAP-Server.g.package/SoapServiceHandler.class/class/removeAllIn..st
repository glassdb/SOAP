utilities-register/unregister
removeAllIn: anObject
	self default removeAllSuchThat: [:eachService | eachService implementor = anObject]