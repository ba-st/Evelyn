initialize - release
calculateGeneticAlgorithValues

	| geneticAlgorithm finalGeneration |

	geneticAlgorithm := self geneticAlgorithm.
	finalGeneration := geneticAlgorithm finalGeneration.

	proposal := finalGeneration individualsSortedBySurvivalCapacity first