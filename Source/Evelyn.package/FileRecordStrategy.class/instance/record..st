actions api
record: aGenerationRecord
	fileStream
		reopen;
		setToEnd.
	aGenerationRecord printOn: fileStream.
	fileStream close