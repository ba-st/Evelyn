initialize-release
initializeWith: aPopulation refillingFoodEach: aNumberOfActions

	population := aPopulation.
	worlds := OrderedCollection new.
	fitnessRecord := GenerationFitness with: aPopulation.
	actionsTillRefill := aNumberOfActions.
	aPopulation members
		do: [ :anOrganism | 
			| world |

			world := self environmentInhabitedBy: anOrganism.
			worlds add: world ]