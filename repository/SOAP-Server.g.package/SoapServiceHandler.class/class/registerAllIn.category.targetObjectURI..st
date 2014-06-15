utilities-register/unregister
registerAllIn: anObject category: methodCategory targetObjectURI: targetObjectURI
	| cls selectors |
	cls := anObject class.
	selectors := cls organization listAtCategoryNamed: methodCategory.
	selectors
		do: [:eachSelector | 
			| compiled service params | 
			compiled := cls compiledMethodAt: eachSelector.
			params := (compiled argsAndTemps copyFrom: 1 to: compiled numArgs) collect: [:each | each asString ].
			service := SoapService
						on: anObject
						named: eachSelector
						paramNames: params.
			service targetObjectURI: targetObjectURI.
			self default add: service]