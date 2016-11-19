instance creation
estimating: anEnvironment allowing: anActionCollection discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: anExplorationProbability

	^self new
		initializeEstimating: anEnvironment
		allowing: anActionCollection
		discountingAt: aDiscountRate
		learningAt: aLearningRate
		exploringWithProbability: anExplorationProbability