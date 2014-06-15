actions
write: anError 
	| ex file stack | 
	ex := anError.
	file := FileDirectory default forceNewFileNamed: 'soapError.log'.
	file isNil ifTrue: [Transcript cr; show: 'File open failed in SoapErrorLog'. ^self].
	file setToEnd.
	file cr; nextPutAll: '### Original Error is... ###'.
	file cr; nextPutAll: TimeStamp current printString.
	file cr; nextPutAll: '#Description: ' , ex description.
	stack := SoPortableUtil portableSubclass stackTraceFrom: ex.
	file cr; nextPutAll: '#Stack:'.
	file cr; cr; nextPutAll: stack.
	file close