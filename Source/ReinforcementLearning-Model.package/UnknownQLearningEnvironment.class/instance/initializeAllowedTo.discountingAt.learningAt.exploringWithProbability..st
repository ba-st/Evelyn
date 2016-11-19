initialize-release
initializeAllowedTo: anActionCollection discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: anExplorationProbability

	actions := anActionCollection.
	discountRate := aDiscountRate.
	learningRate := aLearningRate.
	explorationProbability := anExplorationProbability