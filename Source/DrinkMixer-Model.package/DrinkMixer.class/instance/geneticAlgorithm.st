initialize - release
geneticAlgorithm

	| initialGeneration |

	initialGeneration := self initialGeneration.

	^GeneticAlgorithm
		evolving: initialGeneration
		using: self generationBuilder
		stoppingWhen: self stoppingCriteriaBlock

