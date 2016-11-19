initialize-release
initializeAllowedTo: anActionCollection discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: anExplorationProbability

	environment := UnknownQLearningEnvironment
				allowedTo: anActionCollection
				discountingAt: aDiscountRate
				learningAt: aLearningRate
				exploringWithProbability: anExplorationProbability