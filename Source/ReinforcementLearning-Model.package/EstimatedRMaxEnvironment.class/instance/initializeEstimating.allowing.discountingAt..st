initialize-release
initializeEstimating: anEnvironment allowing: anActionCollection discountingAt: aDiscountRate

	states := (OrderedCollection new)
				addAll: anEnvironment allPossibleStates;
				add: self optimistState;
				yourself.
	maximumReinforcement := anEnvironment maximumReinforcement.
	actions := anActionCollection.
	discountRate := aDiscountRate.

	self initializeActionsRequiredToKnow.
	self initializeRecords