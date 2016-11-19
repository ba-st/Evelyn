initialize-release
initializeValues

	| maximumValue |
	maximumValue := maximumReinforcement / (1 - discountRate).

	values := Dictionary new.
	states do: [:state | values at: state put: maximumValue]