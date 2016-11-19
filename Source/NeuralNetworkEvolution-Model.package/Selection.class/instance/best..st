processing - private
best: aNumberOfWinners

	^ OrganismPopulation with: ((self top: aNumberOfWinners) collect: [ :each | each organism ])