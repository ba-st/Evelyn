test
testNeuronPopulationMeanResponse
	
	| meanResponses |
	meanResponses := population neurons collect: [:each | each meanResponseTo: 0].

	self assertAllOf: meanResponses areExpectedMeanResponsesWithErrorLessThan: 100000 reciprocal