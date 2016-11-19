running - private
runEvolutionWithLearningAndNewActions

	ExperimentFitnessRegistry instance prepareForSampling.
	^ (Evolution of: (OrganismPopulation ofMultiLeggedPredictors: parameters initialPopulationSize) accordingTo: parameters evolutionParameters) winners