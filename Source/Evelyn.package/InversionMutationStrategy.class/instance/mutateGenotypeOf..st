private - building
mutateGenotypeOf: anIndividual
	| tupleMinMax |
	tupleMinMax := self
		randomTupleStartingOnOneAndEndingOn: anIndividual genotype size.
	^ self
		inversion: anIndividual genotype
		startingOn: tupleMinMax min
		andEndingOn: tupleMinMax max