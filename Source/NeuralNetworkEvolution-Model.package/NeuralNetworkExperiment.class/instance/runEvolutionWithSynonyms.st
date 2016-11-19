running - private
runEvolutionWithSynonyms

	ExperimentFitnessRegistry instance prepareForSampling.
	^ (Evolution of: (OrganismPopulation ofMultiLegged: parameters initialPopulationSize) accordingTo: parameters evolutionParameters) winners