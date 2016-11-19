computing
evaluateOn: anAngle
	
	| exponent |
	exponent := (tuningCurve preferredDirection - anAngle) squared / (spatialExtent squared * 2).

	^tuningCurve gain * (1 - (exponent negated exp * amountOfSuppression))