initialize-release
initializeAllowedTo: anActionCollection discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: anExplorationProbability

	environment := UnknownExperienceReplayEnvironment
				allowedTo: anActionCollection
				discountingAt: aDiscountRate
				learningAt: aLearningRate
				exploringWithProbability: anExplorationProbability