test
runWithoutLearning

	self resetRandomProvider.
	^NeuralNetworkExperiment new
		parameters: self experimentParameters;
		runStatic