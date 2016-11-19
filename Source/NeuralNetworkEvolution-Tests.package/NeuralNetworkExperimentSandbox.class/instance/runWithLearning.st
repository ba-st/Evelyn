test
runWithLearning

	self resetRandomProvider.
	^NeuralNetworkExperiment new
		parameters: self experimentParameters;
		runWithLearning