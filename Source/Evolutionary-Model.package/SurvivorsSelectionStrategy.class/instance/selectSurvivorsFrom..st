selecting
selectSurvivorsFrom: aGeneration

	| survivalIndex |

	survivalIndex := (aGeneration size * self survivalPercentage) floor.

	^aGeneration individualsSortedBySurvivalCapacity copyFrom: 1 to: survivalIndex