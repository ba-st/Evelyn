estimating
biasFor: aStimulus averagedForNumberOfTrials: aNumber
	
	| sumOfBias |
	sumOfBias := 0.

	aNumber timesRepeat: [sumOfBias := sumOfBias + (self biasFor: aStimulus)].

	^sumOfBias / aNumber