instance creation
allowedTo: anActionCollection discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: anExplorationProbability

	^self new
		initializeAllowedTo: anActionCollection
		discountingAt: aDiscountRate
		learningAt: aLearningRate
		exploringWithProbability: anExplorationProbability