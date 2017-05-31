selecting
selectSurvivorsFrom: sortedIndividuals

	| survivalIndex |

	survivalIndex := (sortedIndividuals size
		* self survivalPercentage) floor.

	^ sortedIndividuals copyFrom: 1 to: survivalIndex