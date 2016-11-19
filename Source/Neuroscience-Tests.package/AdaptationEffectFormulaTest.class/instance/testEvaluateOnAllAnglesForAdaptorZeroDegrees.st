test
testEvaluateOnAllAnglesForAdaptorZeroDegrees
	
	| adaptationEffects newGains |
	adaptationEffects := population neurons
		collect:
			[:each | AdaptationEffectFormula affecting: each amountOfSuppression: 0.85 spatialExtent: 22.5].
	newGains := adaptationEffects collect: [:each | each evaluateOn: 0].

	self assertAllOf: newGains areExpectedAdaptationEffectsWithErrorLessThan: 100000 reciprocal