building - private
obtainValidIndividualEvaluating: aBlock retrying: aNumberOfTimes

	| trialNumber child |

	trialNumber := 0.

	[
		child := aBlock value.
		trialNumber := trialNumber + 1.
		(self isValid: child) not and: [trialNumber < aNumberOfTimes]]
			whileTrue.

	^(self isValid: child) ifTrue: [child] ifFalse: [self error: 'Couldn''t Obtain Valid Child.']