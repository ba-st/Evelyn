processing
showWinnersWithEvolvingMoves

	| remainingGenerations winners |

	remainingGenerations := parameters generations - 1.

	[ 1 to: (remainingGenerations min: parameters generationsTillNewMoves) do: [ :each | 
		winners := self generationWinners.
		currentPopulation := self offspringOf: winners ].
	self allowAditionalMoves.
	(remainingGenerations := remainingGenerations - parameters generationsTillNewMoves) > 0 ] whileTrue.
	^ (Selection between: currentPopulation refillingFoodEach: parameters actionsTillRefill) best: parameters winnersPerGeneration performancesAfter: parameters actionsPerGeneration