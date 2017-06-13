evaluating
record: aGeneration
	fileStream
		reopen;
		setToEnd.
	(self generateRecordFor: aGeneration) printOn: fileStream.
	fileStream close