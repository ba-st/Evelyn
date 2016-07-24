initialize - release
initializeValues

	| alcoholContentValue preferenceValue |

	alcoholContentValue := 0.
	preferenceValue := 0.
	ingredients := OrderedCollection new.

	mixedDrink proportions
		with: components
		do: [:proportion :component | | ingredient |
			ingredient := MixedDrinkIngredient
				representing: proportion
				of: mixedDrink
				with: component.
			ingredients add: ingredient.
			alcoholContentValue := alcoholContentValue + (proportion * component alcoholContent).
			preferenceValue := preferenceValue + (proportion * component preference)].

	alcoholContent := alcoholContentValue.
	preference :=
		DrinkComponentPreference withValue: (
			(preferenceValue floor max: DrinkComponentPreference veryLow value)
				min: DrinkComponentPreference veryHigh value)