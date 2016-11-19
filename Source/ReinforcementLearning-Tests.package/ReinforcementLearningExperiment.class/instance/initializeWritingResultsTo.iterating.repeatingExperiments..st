initialize-release
initializeWritingResultsTo: aDirectory iterating: aNumberOfIterations repeatingExperiments: aNumberOfRepetitions

	actions := OrderedCollection new
		add: (Action named: 'Move Up');
		add: (Action named: 'Move Down');
		add: (Action named: 'Move Left');
		add: (Action named: 'Move Right');
		yourself.
	resultsDirectory := aDirectory.
	extension := '.experiment'.
	accumulatedNumberOfMoves := OrderedCollection new.
	accumulatedProcessingTime := OrderedCollection new.
	repetitions := aNumberOfRepetitions.
	aNumberOfIterations timesRepeat: [ accumulatedNumberOfMoves add: 0 ].
	aNumberOfIterations timesRepeat: [ accumulatedProcessingTime add: 0 ]