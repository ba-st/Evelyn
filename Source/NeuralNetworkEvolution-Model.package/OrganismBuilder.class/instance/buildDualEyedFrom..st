organism building - private
buildDualEyedFrom: aGenotype

	^ DualEyed
		using: (self dualEyedNetworkFrom: aGenotype)
		doing: self randomAction twoDigitValue