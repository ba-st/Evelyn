mutation
obtainValidIndividualEvaluating: aBlock retrying: aNumberOfTimes

	| trialNumber child |

	trialNumber := 0.
	[ child := aBlock value ]
		on: InstanceCreationFailed
		do: [ :sig | 
			trialNumber := trialNumber + 1.
			trialNumber < aNumberOfTimes
				ifTrue: [ sig retry ] ifFalse:[sig signal] ].

	^ child