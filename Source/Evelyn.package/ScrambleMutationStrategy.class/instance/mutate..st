building
mutate: aGenotype
	| tupleMinMax |
	tupleMinMax := self randomTupleStartingOnOneAndEndingOn: aGenotype size.
	^ self shuffle: aGenotype startingOn: tupleMinMax min andEndingOn: tupleMinMax max