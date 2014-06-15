accessing
dataBindingDict
	dataBindingDict isNil
		ifTrue: [dataBindingDict := Dictionary new.
			self initDataBindingDict].
	^ dataBindingDict