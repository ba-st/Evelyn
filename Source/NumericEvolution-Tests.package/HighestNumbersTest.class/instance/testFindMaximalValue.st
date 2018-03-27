tests experiment
testFindMaximalValue

	| startingIndividuals lastGeneration |

	startingIndividuals := self generateStartingIndividuals.
	lastGeneration := (EvolutionaryAlgorithm startingWith: startingIndividuals using: self experimentContext) lastGeneration.
	self assert: lastGeneration individuals areBetterThan: startingIndividuals