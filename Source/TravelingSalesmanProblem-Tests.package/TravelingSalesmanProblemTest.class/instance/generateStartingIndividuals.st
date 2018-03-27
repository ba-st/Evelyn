accessing
generateStartingIndividuals
	| individuals |
	individuals := OrderedCollection new.
	10 timesRepeat: [ individuals add: (self roadMapStartingOn: cityFactory buenosAires nextCitiesToVisit: self otherCities) ].
	^ individuals