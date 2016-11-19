processing
consider: aNumber

	| currentOcurrences |
	currentOcurrences := observations at: aNumber ifAbsent: [0].
	observations at: aNumber put: currentOcurrences + 1.
	totalObservations := totalObservations + 1