processing
resultsOfTraining: anAgent

	| training |
	training := self trainingType of: anAgent doneBy: self.
	training start.

	^training result