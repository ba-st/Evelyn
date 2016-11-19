initialize-release
initializeEstimating: anEnvironment allowing: anActionCollection discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: anExplorationProbability

	states := anEnvironment allPossibleStates.
	maximumReinforcement := anEnvironment maximumReinforcement.
	actions := anActionCollection.
	discountRate := aDiscountRate.
	learningRate := aLearningRate.
	exploringProbability := anExplorationProbability.
	randomNumberProvider := DhbUniformDistribution new.

	self initializeValues.
	self initializeQualities.
	self initializePolicy