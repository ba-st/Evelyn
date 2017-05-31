tests
testFindMaximalValue

	|lastGeneration |

	lastGeneration := (EvolutionaryAlgorithm startingWith: self statingIndividuals using: self experimentContext)
		lastGeneration.

   self assert: lastGeneration individuals areBetterThan: self statingIndividuals 		
	