accessing - private
samplePopulation

	| individuals |

	individuals := (1 to: 10)
		collect: [ :times | Individual madeUpOf: (Array with: times) ].
	^ IndividualPopulation composedOfAll: individuals