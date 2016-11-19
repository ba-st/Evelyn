initialize-release
initializeWith: aPopulation accordingTo: parametersToUse

	parameters := parametersToUse.
	currentPopulation := aPopulation.
	mutator := Mutator new.
	currentPopulation allowInitialMoves