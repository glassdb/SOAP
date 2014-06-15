actions
at: serviceKey
	serviceKey isNil ifTrue:[^nil].
	^ objectDict at: serviceKey ifAbsent:[SoapNoSuchService signal: serviceKey]