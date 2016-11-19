running - private
runDualEyedEvolution

	ExperimentFitnessRegistry instance prepareForSampling.
	^ (Evolution of: (OrganismPopulation ofDualEyed: parameters initialPopulationSize) accordingTo: parameters evolutionParameters) winners