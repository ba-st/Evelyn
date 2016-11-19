accessing - private
expectedAlleleFrom: population whenCrossingAt: firstIndex with: secondIndex

	| firstParent secondParent |

	firstParent := population individuals at: firstIndex.
	secondParent := population individuals at: secondIndex.
	^ (firstParent alleleAt: 1) * 0.4 + ((secondParent alleleAt: 1) * 0.6)