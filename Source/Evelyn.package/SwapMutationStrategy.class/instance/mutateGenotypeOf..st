private - building
mutateGenotypeOf: anIndividual
	| mutatedGenotype tupleMinMax |
	mutatedGenotype := anIndividual genotype copy.
	tupleMinMax := self
		randomTupleStartingOnOneAndEndingOn: anIndividual genotype size.
	^ mutatedGenotype swap: tupleMinMax min with: tupleMinMax max