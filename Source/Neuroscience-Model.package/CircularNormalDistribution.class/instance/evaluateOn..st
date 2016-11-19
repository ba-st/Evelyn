computing
evaluateOn: aTheta
	
	^(tuningCurveWidth * (aTheta degreesToRadians cos - 1)) exp * maximalFiringRate + spontaneousActivity