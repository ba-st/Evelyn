printing - private
printRow: rowNumber on: aStream

	aStream nextPut: $[.
	(1 to: width)
		do: [ :columnNumber | self printPosition: (Position x: columnNumber y: rowNumber) on: aStream ]
		separatedBy: [ aStream
				space;
				nextPut: $| ].
	aStream
		space;
		nextPut: $]