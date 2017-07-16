instance creation
fromGenotype: aGenotype
	^ self basedOn: (BinaryCodex new fromBinary: aGenotype)