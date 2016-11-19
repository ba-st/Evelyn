processing - private
adjustExpectedValue

	expectedValue := 0.

	observations keysAndValuesDo: 
			[:observedValue :numberOfObservations |
			| weighedValue |
			weighedValue := observedValue * numberOfObservations / totalObservations.
			expectedValue := expectedValue + weighedValue]