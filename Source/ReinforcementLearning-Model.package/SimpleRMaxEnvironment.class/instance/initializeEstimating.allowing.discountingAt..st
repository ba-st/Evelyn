initialize-release
initializeEstimating: anEnvironment allowing: anActionCollection discountingAt: aDiscountRate

	states := anEnvironment allPossibleStates.
	maximumReinforcement := anEnvironment maximumReinforcement.
	actions := anActionCollection.
	discountRate := aDiscountRate.

	self initializeValues.
	self initializeExperiencies.
	self initializePolicy