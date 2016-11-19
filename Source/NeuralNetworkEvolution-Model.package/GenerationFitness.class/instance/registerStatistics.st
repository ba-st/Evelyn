accessing
registerStatistics

	| average variance |

	average := (fitnesses inject: 0 into: [ :sum :each | sum + each fitness ]) / fitnesses size.
	variance := (fitnesses inject: 0 into: [ :sum :each | sum + (each fitness - average) squared ]) / (fitnesses size - 1).
	ExperimentFitnessRegistry instance registerPeak: fitnesses first fitness average: average variance: variance