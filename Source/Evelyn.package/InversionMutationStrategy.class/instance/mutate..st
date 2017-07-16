building
mutate: aGenotype
	| tupleMinMax |
	tupleMinMax := self randomTupleStartingOnOneAndEndingOn: aGenotype size.
	^ self inversion: aGenotype startingOn: tupleMinMax min andEndingOn: tupleMinMax max