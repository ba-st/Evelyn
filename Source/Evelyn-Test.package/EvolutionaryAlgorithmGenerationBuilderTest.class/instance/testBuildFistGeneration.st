tests
testBuildFistGeneration
	| firstGeneration |
	firstGeneration := EvolutionaryAlgorithmGenerationBuilder new buildGeneration: 1 composedOf: self individuals.
	self
		assert: (firstGeneration isA: EvolutionaryAlgorithmGeneration);
		assert: firstGeneration number equals: 1;
		assert: firstGeneration individuals equals: self individuals