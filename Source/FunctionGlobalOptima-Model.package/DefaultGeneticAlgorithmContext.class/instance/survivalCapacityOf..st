evaluating
survivalCapacityOf: anIndividual

	^knownSurvivalCapacities at: anIndividual ifAbsentPut: [fitnessFunction value: anIndividual]