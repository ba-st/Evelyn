computing - private
alcoholContentFactorOf: mixedDrink

	| alcoholContent |

	alcoholContent := 0.

	mixedDrink proportions
		with: drinkMixer components
		do: [:proportion :component |
			alcoholContent := alcoholContent + (proportion * component alcoholContent)].

	^(alcoholContent - drinkMixer desiredAlcoholContent) squared