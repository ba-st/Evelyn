accessing
finalGeneration

	| currentGeneration |

	currentGeneration := initialGeneration.

	[stoppingCriteria value: currentGeneration]
		whileFalse: [currentGeneration := generationBuilder generationAfter: currentGeneration].

	^currentGeneration