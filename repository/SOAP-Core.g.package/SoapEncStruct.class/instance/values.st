actions
values
	| values |
	values := OrderedCollection new.
	self keys do: [:eachKey | (self dictionary at: eachKey ifAbsent: []) ifNotNilDo: [:v | values add: v]].
	^ values