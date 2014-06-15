actions
search: query start: start maxResults: maxResults filter: filter restrict: restrict safeSearch: safeSearch languageRestrict: lr inputEncoding: ie outputEncoding: oe 
	| params resp |
	params := OrderedCollection with: self licenseKey.
	params add: query;
		 add: start;
		 add: maxResults;
		 add: filter;
		 add: restrict;
		 add: safeSearch;
		 add: lr;
		 add: ie;
		 add: oe.
	resp := self doGoogleSearch invokeWithValues: params.
	^ resp isFault
		ifTrue: [resp raiseException]
		ifFalse: [resp returnValue]