experimenting - wind - private
accumulateQLearningWindStatisticsBuildingWorldsOfSize: aWorldSize discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: explorationProbability

	| decisionMaker agent trainer |

	decisionMaker := QLearning
		allowedTo: actions
		discountingAt: aDiscountRate
		learningAt: aLearningRate
		exploringWithProbability: explorationProbability.
	agent := Agent guidedBy: decisionMaker.
	trainer := WindTrainer buildingWorldsOfSize: aWorldSize.

	accumulatedNumberOfMoves := accumulatedNumberOfMoves
		collect:
			[ :accumulatedNumber | accumulatedNumber + (trainer resultsOfTraining: agent) numberOfMoves ].
	accumulatedProcessingTime := accumulatedProcessingTime
		collect:
			[ :accumulatedTime | accumulatedTime + (trainer resultsOfTraining: agent) processingTime ]