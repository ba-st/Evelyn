comparing
= anObject
	^ self == anObject or:[(anObject isA: NumericIndividual) and: [ anObject number = self number ]]