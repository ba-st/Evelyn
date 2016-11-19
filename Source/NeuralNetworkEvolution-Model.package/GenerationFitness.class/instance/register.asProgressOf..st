accessing
register: aProgress asProgressOf: anOrganism

	(fitnesses detect: [ :each | each organism = anOrganism ]) recordProgress: aProgress