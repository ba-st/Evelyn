processing - private
offspringOf: aPopulation

	| nextGeneration |

	nextGeneration := OrderedCollection new.
	aPopulation members do: [ :anOrganism | parameters offspringPerWinner timesRepeat: [ nextGeneration add: (self mutatedOffspringOf: anOrganism) ] ].
	^ OrganismPopulation with: nextGeneration