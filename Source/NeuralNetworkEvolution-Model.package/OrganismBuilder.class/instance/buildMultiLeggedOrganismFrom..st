organism building - private
buildMultiLeggedOrganismFrom: aGenotype

	^ MultiLeggedOrganism using: (self multiLeggedNetworkFrom: aGenotype) doing: self randomMultiLeggedAction threeDigitValue