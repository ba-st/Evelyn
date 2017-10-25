building
mutateGenotypeOf: anIndividual
	| mutatedGenotype tupleMinMax |
	mutatedGenotype := anIndividual genotype
		copyFrom: 2
		to: anIndividual genotype size.
	tupleMinMax := self
		randomTupleStartingOnOneAndEndingOn: mutatedGenotype size.
	^ (OrderedCollection with: anIndividual genotype first)
		addAll: (mutatedGenotype swap: tupleMinMax min with: tupleMinMax max);
		yourself