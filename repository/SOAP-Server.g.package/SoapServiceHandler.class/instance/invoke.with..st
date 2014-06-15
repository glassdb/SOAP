private
invoke: aSoapEnvelope with: aSoapContext
	
	"##obsolete##" "for testing"
	self context: aSoapContext.
	^self invoke: aSoapEnvelope