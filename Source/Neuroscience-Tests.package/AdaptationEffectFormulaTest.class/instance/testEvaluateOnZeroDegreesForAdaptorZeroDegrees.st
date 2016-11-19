test
testEvaluateOnZeroDegreesForAdaptorZeroDegrees
	
	| tuningCurve adaptationEffect |
	tuningCurve := TuningCurve meanSpikeCountDescribedBy: distribution preferredDirection: 0.
	adaptationEffect := AdaptationEffectFormula affecting: tuningCurve amountOfSuppression: 0.85
		spatialExtent: 22.5.

	self assert: ((adaptationEffect evaluateOn: 0) - 7.5) abs < 1000000 reciprocal