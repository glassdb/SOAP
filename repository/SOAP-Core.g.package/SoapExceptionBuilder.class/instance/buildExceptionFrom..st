actions
buildExceptionFrom: aSoapFault 
	| exception |
	aSoapFault detail isNil
		ifTrue: [exception := SoapError fromSoapFault: aSoapFault]
		ifFalse: [| exceptionDetail errorClassTag exceptionClassName messageText | 
			exceptionDetail := aSoapFault detail subElements notEmpty  ifTrue:[aSoapFault detail subElements first] ifFalse:[nil].
			errorClassTag := exceptionDetail isNil ifFalse:[exceptionDetail findChildNamed: #'ErrorClass'].
			exceptionClassName := errorClassTag isNil
						ifTrue: ['SoapError']
						ifFalse: [errorClassTag value].
			exceptionClassName = 'SoapError'
				ifTrue: [exception := SoapError fromSoapFault: aSoapFault]
				ifFalse: [
					| ansi |
					exception := (Smalltalk
						at: exceptionClassName asSymbol
						ifAbsent: [SoapNoSuchExceptionClass signal: exceptionClassName]) new.
					messageText := exceptionDetail ifNotNilDo: [:elem | elem findChildNamed: #'messageText'].
					exception
						messageText: (messageText isNil
							ifTrue: [aSoapFault faultstring]
							ifFalse: [messageText value]).
					"necessary to get a meaningful error message, in addition to correct class"
					ansi := System myUserProfile objectNamed: #'ANSIException'.
					ansi notNil ifTrue: [ exception gsCategory: ansi ].
					exception gsNumber: 1 ]].
	exception tag: '<<signaled in server>>'.
	"Should I use tag?"
	^ exception