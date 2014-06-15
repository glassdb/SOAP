actions
dispatch: aSoapEnvelope with: aSoapContext 
	| env |
	self envelope: aSoapEnvelope.
	self context: aSoapContext.
	env := [| ret | 
			ret := self invoke: aSoapEnvelope.
			self wrapResult: ret]
				on: Error
				do: [:ex | 
					SoapErrorLog write: ex.
					(ObjectLogEntry 
						error: 'SOAP error' 
						object: {ex description. (GsProcess stackReportToLevel: 300).}) addToLog.
					ex
						return: (self wrapError: ex)].
	^ env