actions
stackTraceFrom: anError
	| ctx |
	ctx := [GsProcess stackReportToLevel: 300] on: Error do: [:ex | ex return: ''].
	^ctx