accessing
maximumReinforcement

	^(prizeLocations values collect: [:prize | prize reward]) asSortedCollection
		last