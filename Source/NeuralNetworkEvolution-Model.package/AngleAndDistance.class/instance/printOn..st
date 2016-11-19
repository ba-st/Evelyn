printing
printOn: aStream

	aStream nextPutAll: 'A:'.
	self angle printOn: aStream.
	aStream nextPutAll: ' - D:'.
	self distance printOn: aStream