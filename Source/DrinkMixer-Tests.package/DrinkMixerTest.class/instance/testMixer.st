test
testMixer

	| mixer |

	mixer := DrinkMixer mixing: self availableComponents toCreateAMixWithAlcoholContentOf: 20 / 100 costingAtMost: 100.
	
	self assert: (mixer proposal isKindOf: MixedDrink).
	self assert: (mixer proposal investments anySatisfy: [ :each | each > 0 ]).
	self assert: ((MixedDrinkFitness workingWith: mixer) value: mixer proposal) < 1