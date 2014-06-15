testing
skipInteropTesting
	"set to true to skip all interop testing"
	
	skipInteropTesting == nil ifTrue: [ ^true ].
	^skipInteropTesting