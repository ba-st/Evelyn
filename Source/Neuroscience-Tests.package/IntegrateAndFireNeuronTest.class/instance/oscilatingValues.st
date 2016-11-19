test support
oscilatingValues

	^ OrderedCollection new
		addAll: self oscilatingValuesPart1;
		addAll: self oscilatingValuesPart2;
		yourself