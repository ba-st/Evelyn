processing - private
generationWinners

	^ (Selection between: currentPopulation refillingFoodEach: parameters actionsTillRefill) best: parameters winnersPerGeneration after: parameters actionsPerGeneration