building
mutate: aGenotype
	| mutatedGenotype tupleMinMax |
	mutatedGenotype := aGenotype copyFrom: 2 to: aGenotype size.
	tupleMinMax := self randomTupleStartingOnOneAndEndingOn: mutatedGenotype size.
	^ (OrderedCollection with: aGenotype first)
		addAll: (mutatedGenotype swap: tupleMinMax min with: tupleMinMax max);
		yourself