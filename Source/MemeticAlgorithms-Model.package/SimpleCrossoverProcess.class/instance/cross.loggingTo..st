processing
cross: aPopulation loggingTo: aProcessLogger

	| breeded |

	aProcessLogger log: 'Crossover process started'.

	breeded := OrderedCollection new.
	aPopulation individuals
		pairsDo: [ :firstParent :secondParent | 
			breeded add: (self cross: firstParent overWith: secondParent).
			breeded add: (self cross: secondParent overWith: firstParent) ].

	aProcessLogger log: 'Crossover process ended'.
	^ IndividualPopulation composedOfAll: breeded