experimenting - multi - private
accumulateSimpleRMaxMultiObjectiveMinesStatisticsBuildingWorldsOfSize: aWorldSize planting: aNumberOfMines discountingAt: aDiscountRate

	| decisionMaker agent trainer |

	decisionMaker := RMax allowedTo: actions discountingAt: aDiscountRate.
	agent := Agent guidedBy: decisionMaker.
	trainer := MultiObjectiveMinesTrainer
		buildingWorldsOfSize: aWorldSize
		planting: aNumberOfMines.

	accumulatedNumberOfMoves := accumulatedNumberOfMoves
		collect:
			[ :accumulatedNumber | accumulatedNumber + (trainer resultsOfTraining: agent) numberOfMoves ].
	accumulatedProcessingTime := accumulatedProcessingTime
		collect:
			[ :accumulatedTime | accumulatedTime + (trainer resultsOfTraining: agent) processingTime ]