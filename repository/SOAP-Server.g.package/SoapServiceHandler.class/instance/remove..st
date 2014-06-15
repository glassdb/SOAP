service register/unregister
remove: aSoapService
	"shortcut for global service"
	^ self serviceHome removeKey: aSoapService pathName