initialize-release
environmentInhabitedBy: anOrganism

	^ OrganismEnvironmentBuilder new
		buildOfSize: 10
		withFoodAmount: 10
		inhabitedBy: anOrganism
		ofInterestTo: self