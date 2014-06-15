instance creation
signal: messageText code: errorCode contents: contents 
	^ self new errorCode: errorCode;
		 errorContents: contents;
		 signal: messageText