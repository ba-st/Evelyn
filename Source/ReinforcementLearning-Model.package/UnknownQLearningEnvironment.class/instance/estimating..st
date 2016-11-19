processing
estimating: anEnvironment

	^EstimatedQLearningEnvironment
		estimating: anEnvironment
		allowing: actions
		discountingAt: discountRate
		learningAt: learningRate
		exploringWithProbability: explorationProbability