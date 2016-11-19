building
buildOfSize: aNumber withFoodAmount: aNumberOfFood inhabitedBy: anOrganism ofInterestTo: aSelection

	| world |

	world := OrganismEnvironment of: aNumber by: aNumber ofInterestTo: aSelection.
	aNumberOfFood timesRepeat: [ self createFoodIn: world ].
	world place: anOrganism in: (self freeRandomPositionIn: world) facing: self randomFacing.
	^ world