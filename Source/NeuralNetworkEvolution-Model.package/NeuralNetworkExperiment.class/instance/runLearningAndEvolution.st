running - private
runLearningAndEvolution

	ExperimentFitnessRegistry instance prepareForSampling.
	^ (Evolution of: (OrganismPopulation ofPredictors: parameters initialPopulationSize) accordingTo: parameters evolutionParameters) winners