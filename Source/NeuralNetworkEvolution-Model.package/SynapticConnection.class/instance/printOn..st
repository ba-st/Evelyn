printing
printOn: aStream

	from printOn: aStream.
	aStream nextPutAll: '->'.
	to printOn: aStream.
	aStream
		nextPutAll:
			'
'