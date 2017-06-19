accessing
= anObject
	^ (anObject isA: NumericIndividual) and: [ anObject number = self number ]