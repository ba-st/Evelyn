accessing
generateStartingIndividuals
	| individuals numericIndividualBuilder |
	individuals := OrderedCollection new.
	numericIndividualBuilder := NumericIndividualBuilder randomizedUsing: self randomProvider.
	10 timesRepeat: [ individuals add: numericIndividualBuilder build ].
	^ individuals