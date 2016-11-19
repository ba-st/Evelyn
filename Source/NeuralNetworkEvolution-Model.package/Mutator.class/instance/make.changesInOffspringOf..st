processing
make: aNumberOfMutations changesInOffspringOf: anOrganism

	| mutatedGenotype |

	mutatedGenotype := self make: aNumberOfMutations changesIn: anOrganism genotype copy.
	^ anOrganism giveBirthTo: mutatedGenotype for: self