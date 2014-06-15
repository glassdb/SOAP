service register/unregister
removeAllSuchThat: aBlock
	| services |
	services := self selectServices: aBlock.
	services do: [:each | self remove: each]