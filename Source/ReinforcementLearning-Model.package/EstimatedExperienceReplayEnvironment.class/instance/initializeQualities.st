initialize-release
initializeQualities

	| maximumValue |
	maximumValue := self maximumValue.

	qualities := Dictionary new.
	states do: 
			[:state |
			| stateQualities |
			stateQualities := Dictionary new.
			actions do: [:action | stateQualities at: action put: maximumValue].
			qualities at: state put: stateQualities]