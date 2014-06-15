actions
at: key put: value
	"key is limited to String"
	"Note that it remembers order of key->value registrations"
	| stringKey |
	stringKey := key asString.
	(self keys includes: stringKey) ifFalse: [self keys add: stringKey].
	^self dictionary at: stringKey put: value