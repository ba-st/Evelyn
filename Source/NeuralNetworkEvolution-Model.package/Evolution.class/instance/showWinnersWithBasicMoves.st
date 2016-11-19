processing
showWinnersWithBasicMoves

	parameters generations - 1
		timesRepeat: [ | winners |

			winners := self generationWinners.
			currentPopulation := self offspringOf: winners ].
	^ (Selection between: currentPopulation refillingFoodEach: parameters actionsTillRefill) best: parameters winnersPerGeneration performancesAfter: parameters actionsPerGeneration