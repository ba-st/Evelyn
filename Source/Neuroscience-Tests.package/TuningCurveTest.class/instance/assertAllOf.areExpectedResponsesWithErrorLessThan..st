test support
assertAllOf: responses areExpectedResponsesWithErrorLessThan: aTolerance
	
	| expectedPopulationResponses |
	expectedPopulationResponses := self expectedPopulationMeanResponses.

	responses
		with: expectedPopulationResponses
		do:
			[:obtained :expected | 
			| difference |
			difference := (obtained - expected) abs.
			self assert: difference < (3 * expected + aTolerance)]