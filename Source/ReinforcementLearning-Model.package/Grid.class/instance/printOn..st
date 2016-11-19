printing
printOn: aStream

	aStream cr.
	yAxis reverseDo: 
			[:row |
			row do: 
					[:location |
					location printOn: aStream.
					aStream nextPut: $|].
			aStream cr]