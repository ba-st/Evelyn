tests
testFindMaximalValue

	|lastGeneration |

	lastGeneration := (EvolutionaryAlgorithm startingWith: self startingIndividuals using: self experimentContext)
		lastGeneration.

   self assert: lastGeneration individuals areBetterThan: self startingIndividuals 		
	