estimating
estimationFor: aStimulus averagedForNumberOfTrials: aNumber
	
	| sumOfEstimations |
	sumOfEstimations := 0.

	aNumber timesRepeat: [sumOfEstimations := sumOfEstimations + (self estimationFor: aStimulus)].

	^sumOfEstimations / aNumber