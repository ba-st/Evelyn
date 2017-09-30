tests
testAccessors
	| individuals generation |
	individuals := #(1 2 3 4).
	generation := EvolutionaryAlgorithmGeneration number: 1 composedOf: individuals.
	self
		assert: generation number equals: 1;
		assert: generation individuals equals: individuals;
		assert: generation size equals: individuals size