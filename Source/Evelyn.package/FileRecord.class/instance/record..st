evaluating
record: aGeneration
	[ fileStream
		reopen;
		setToEnd.
	(self generateRecordFor: aGeneration) printOn: fileStream ]
		ensure: [ fileStream close ]