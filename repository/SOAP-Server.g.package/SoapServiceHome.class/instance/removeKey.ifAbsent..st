actions
removeKey: serviceKey ifAbsent: aBlock
	serviceKey isNil ifTrue:[^nil].
	^ objectDict removeKey: serviceKey ifAbsent: aBlock