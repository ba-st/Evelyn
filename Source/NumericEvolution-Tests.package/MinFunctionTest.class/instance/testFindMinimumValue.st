tests
testFindMinimumValue
	| lastGeneration |
	lastGeneration := (EvolutionaryAlgorithm startingWith: startingIndividuals using: self experimentContext) lastGeneration.
	self assert: lastGeneration individuals areBetterThan: startingIndividuals