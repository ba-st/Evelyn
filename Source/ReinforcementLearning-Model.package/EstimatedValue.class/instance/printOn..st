printing
printOn: aStream

	(totalObservations = 0 ifTrue: [0] ifFalse: [self expectedValue])
		printOn: aStream