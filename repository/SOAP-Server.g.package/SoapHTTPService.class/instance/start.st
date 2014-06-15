actions
start

	server ~~ nil 
		ifTrue: [ 
			server responseBlock: [:aHTTPRequest | self module process: aHTTPRequest ].
			server start ]