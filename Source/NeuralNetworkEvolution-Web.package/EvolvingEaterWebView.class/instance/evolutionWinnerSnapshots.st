accessing - private
evolutionWinnerSnapshots

	| parameters winners |

	self resetRandomProvider.
	parameters := self experimentParameters.
	winners := (Evolution of: (OrganismPopulation of: parameters initialPopulationSize) accordingTo: parameters evolutionParameters)
		showWinners.

	^ winners first instVarNamed: 'progress'