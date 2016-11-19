processing
estimating: anEnvironment

	^EstimatedExperienceReplayEnvironment
		estimating: anEnvironment
		allowing: actions
		discountingAt: discountRate
		learningAt: learningRate
		exploringWithProbability: explorationProbability