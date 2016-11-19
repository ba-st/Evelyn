computing
probabilityOfRespondingTo: anAngle with: aResponse
	
	| distribution |
	distribution := self distributionRelatedTo: anAngle.

	^distribution value: aResponse