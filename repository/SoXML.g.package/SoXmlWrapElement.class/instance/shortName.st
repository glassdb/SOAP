actions
shortName
	| nm idx sz |
	nm := self name.
	idx := nm indexOf: $: ifAbsent: [^nm].
	sz := nm size.
	idx > sz ifTrue:[^nm].
	^nm copyFrom: idx + 1 to: sz