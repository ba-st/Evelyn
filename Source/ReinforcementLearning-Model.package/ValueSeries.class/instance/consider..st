processing
consider: aNumber

	self increaseObservationsOf: aNumber.
	totalObservations := totalObservations + 1.
	self adjustExpectedValue