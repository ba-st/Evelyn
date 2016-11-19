test
testAverageEstimationUsingWinnerTakeAllDecoder
	
	| angles estimator estimationAverages |
	angles := -180 to: 180.
	estimator := Estimator
		decodingResponsesOf: population
		with: (WinnerTakeAllDecoder considering: population).

	estimationAverages := angles
		collect: [:stimulus | estimator estimationFor: stimulus averagedForNumberOfTrials: 100].

	angles
		with: estimationAverages
		do: [:angle :average | self assert: ((angle - average) abs rem: 180) < (angle abs + 2)]