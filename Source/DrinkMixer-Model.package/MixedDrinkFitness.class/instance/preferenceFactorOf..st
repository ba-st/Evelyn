computing - private
preferenceFactorOf: mixedDrink

	| preference |

	preference := 0.

	mixedDrink proportions
		with: drinkMixer components
		do: [:proportion :component | preference := preference + (proportion * component preference)].

	^((preference - DrinkComponentPreference veryHigh) / DrinkComponentPreference veryHigh) squared 