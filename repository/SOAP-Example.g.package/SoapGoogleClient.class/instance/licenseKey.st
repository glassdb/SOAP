accessing
licenseKey
	licenseKey isNil ifTrue: [licenseKey := self class licenseKey].
	^licenseKey