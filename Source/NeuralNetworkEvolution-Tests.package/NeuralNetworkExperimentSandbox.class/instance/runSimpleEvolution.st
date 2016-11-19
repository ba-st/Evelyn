test
runSimpleEvolution

	| parameters |

	self resetRandomProvider.
	parameters := self simpleExperimentParameters.
	^ (Evolution
		of: (OrganismPopulation of: parameters initialPopulationSize)
		accordingTo: parameters evolutionParameters) showWinners