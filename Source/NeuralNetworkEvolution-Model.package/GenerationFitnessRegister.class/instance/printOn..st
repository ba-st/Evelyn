printing
printOn: aStream

	peak asFloat printOn: aStream.
	aStream nextPutAll: ' - '.
	average asFloat printOn: aStream.
	aStream nextPutAll: ' - '.
	variance asFloat printOn: aStream