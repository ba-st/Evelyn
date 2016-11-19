running - private
runEvolution

	ExperimentFitnessRegistry instance prepareForSampling.
	^ (Evolution of: (OrganismPopulation of: parameters initialPopulationSize) accordingTo: parameters evolutionParameters) winners