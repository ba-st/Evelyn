building
shuffle: aGenotype startingOn: aMinNumber andEndingOn: aMaxNumber
	^ OrderedCollection new
		addAll: (aGenotype copyFrom: 1 to: aMinNumber - 1);
		addAll: ((aGenotype copyFrom: aMinNumber to: aMaxNumber) shuffle);
		addAll: (aGenotype copyFrom: aMaxNumber + 1 to: aGenotype size);
		yourself