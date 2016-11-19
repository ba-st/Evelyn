test
testBiasUsingLogLikelihoodDecoder
	
	| angles estimator biasAverages |
	angles := -180 to: 180.
	estimator := Estimator decodingResponsesOf: population with: (LogLikelihoodDecoder considering: population).

	biasAverages := angles
		collect: [:stimulus | estimator biasFor: stimulus averagedForNumberOfTrials: 100].

	angles with: biasAverages do: [:angle :bias | self assert: (bias abs rem: 180) < (angle abs + 10)]