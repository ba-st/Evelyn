organism building
buildFrom: aGenotype

	^ NonLearningOrganism
		using: (self networkFrom: aGenotype)
		doing: self randomAction twoDigitValue