experimenting - wind - private
accumSimpleRMaxWindWindStatsBuildingWorldsOfSize: aWorldSize discountingAt: aDiscountRate

	| decisionMaker agent trainer |

	decisionMaker := RMax allowedTo: actions discountingAt: aDiscountRate.
	agent := Agent guidedBy: decisionMaker.
	trainer := WindTrainer buildingWorldsOfSize: aWorldSize.

	accumulatedNumberOfMoves := accumulatedNumberOfMoves
		collect:
			[ :accumulatedNumber | accumulatedNumber + (trainer resultsOfTraining: agent) numberOfMoves ].
	accumulatedProcessingTime := accumulatedProcessingTime
		collect:
			[ :accumulatedTime | accumulatedTime + (trainer resultsOfTraining: agent) processingTime ]