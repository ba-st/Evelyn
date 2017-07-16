building
mutate: aGenotype
	| mutatedGenotype tupleMinMax |
	mutatedGenotype := aGenotype copy.
	tupleMinMax := self randomTupleStartingOnOneAndEndingOn: aGenotype size.
	^ mutatedGenotype swap: tupleMinMax min with: tupleMinMax max