actions
removeKey: serviceKey 
	serviceKey isNil ifTrue:[^nil].
	^ objectDict removeKey: serviceKey