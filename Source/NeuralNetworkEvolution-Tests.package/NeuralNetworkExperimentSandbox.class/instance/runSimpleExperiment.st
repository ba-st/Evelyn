test
runSimpleExperiment

	self resetRandomProvider.
	^NeuralNetworkExperiment new
		parameters: self simpleExperimentParameters;
		runStatic