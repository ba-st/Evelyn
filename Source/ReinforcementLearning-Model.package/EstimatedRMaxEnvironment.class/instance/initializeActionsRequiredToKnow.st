initialize-release
initializeActionsRequiredToKnow

	| errorBound firstValue failureProbability secondValue |
	errorBound := 100 reciprocal.
	firstValue := (4 * states size * actions size * maximumReinforcement
				/ errorBound raisedTo: 3)
				ceiling.
	failureProbability := 100 reciprocal.
	secondValue := (((failureProbability
				/ (6 * states size * actions size squared)) ln
				raisedTo: 3) * -6)
				ceiling.
	actionsRequiredToKnow := (firstValue max: secondValue) + 1.
	actionsRequiredToKnow := 3