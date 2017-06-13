accessing
contents
	[ fileStream reopen.
	^ fileStream contents ]
		ensure: [ fileStream close ]