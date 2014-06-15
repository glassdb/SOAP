actions
encodeSoapVariable: aSoapVariable 
	| elem val |
	elem := self xmlElementClass named: aSoapVariable name.
	val := aSoapVariable value.
	elem putAttributeNamed: SoapConstants xsiType value: SoapConstants nullEncPrefixColon , aSoapVariable value class name.
	
	elem basicValue: val.
	^ elem