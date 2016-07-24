initialize - release
initializeComputingFitnessWith: aFunction

	fitnessFunction := aFunction.
	knownSurvivalCapacities := Dictionary new.
	numberOfGenerationsConsidered := 0