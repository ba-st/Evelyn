accessing
generateStartingIndividuals
	| individuals numericIndividualBuilder |
	individuals := OrderedCollection new.
	numericIndividualBuilder := NumericIndividualBuilder randomized: self randomProvider.
	10 timesRepeat: [ individuals add: numericIndividualBuilder build ].
	^ individuals