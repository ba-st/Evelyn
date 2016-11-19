initialize-release
calculateProbability
	
	| accumulatedProbability |
	accumulatedProbability := 1.
	population neurons
		with: response
		do:
			[:eachNeuron :eachResponse | 
			| eachProbability |
			eachProbability := eachNeuron probabilityOfRespondingTo: angle with: eachResponse.
			accumulatedProbability := accumulatedProbability * eachProbability].

	^accumulatedProbability