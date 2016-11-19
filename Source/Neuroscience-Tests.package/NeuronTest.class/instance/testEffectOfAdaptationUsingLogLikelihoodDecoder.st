test
testEffectOfAdaptationUsingLogLikelihoodDecoder
	
	| population decoder estimator angles biasAverages |
	population := self population.
	self updateGainsOf: population.
	decoder := LogLikelihoodDecoder considering: population.
	estimator := Estimator decodingResponsesOf: population with: decoder.
	angles := -180 to: 180.
	biasAverages := angles
		collect: [:stimulus | estimator biasFor: stimulus averagedForNumberOfTrials: 100].

	angles with: biasAverages do: [:angle :bias | self assert: (bias abs rem: 180) < (angle abs + 50)]