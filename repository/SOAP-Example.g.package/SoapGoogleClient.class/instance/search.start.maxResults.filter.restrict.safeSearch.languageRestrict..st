actions
search: query start: start maxResults: maxResults filter: filter restrict: restrict safeSearch: safeSearch languageRestrict: lr 
	^ self
		search: query
		start: start
		maxResults: maxResults
		filter: filter
		restrict: restrict
		safeSearch: safeSearch
		languageRestrict: lr
		inputEncoding: 'utf8'
		outputEncoding: 'utf8'