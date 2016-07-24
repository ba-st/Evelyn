initialize - release
initializeDetailing: aMixedDrink accordingTo: aDrinkMixer

	| investments |

	investments := OrderedCollection new.
	components := OrderedCollection new.

	aMixedDrink proportions
		with: aDrinkMixer components
		do: [:proportion :component |
			(proportion >= (1/100))
				ifTrue: [
					investments add: proportion * aMixedDrink cost.
					components add: component]].

	mixedDrink := MixedDrink investing: investments.

	self initializeValues