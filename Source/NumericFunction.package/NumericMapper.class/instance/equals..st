accessing
equals: anObject

	^(anObject isA: NumericMapper ) and: [ anObject individual = self individual ]