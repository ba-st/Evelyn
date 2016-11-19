printing
printOn: aStream

	1 to: height do: [ :rowNumber | 
		self printRow: rowNumber on: aStream.
		aStream
			nextPutAll:
				'
' ]