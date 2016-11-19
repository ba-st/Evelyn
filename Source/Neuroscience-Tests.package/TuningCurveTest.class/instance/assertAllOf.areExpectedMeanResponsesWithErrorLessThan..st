test support
assertAllOf: meanResponses areExpectedMeanResponsesWithErrorLessThan: aTolerance
	
	| expectedPopulationMeanResponses |
	expectedPopulationMeanResponses := self expectedPopulationMeanResponses.

	meanResponses
		with: expectedPopulationMeanResponses
		do:
			[:obtained :expected | 
			| difference |
			difference := (obtained - expected) abs.
			self assert: difference < aTolerance]