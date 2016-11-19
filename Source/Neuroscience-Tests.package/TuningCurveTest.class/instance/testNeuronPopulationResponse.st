test
testNeuronPopulationResponse
	
	| responses |
	responses := population neurons collect: [:each | each responseTo: 0].

	self assertAllOf: responses areExpectedResponsesWithErrorLessThan: 10 reciprocal