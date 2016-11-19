accessing
describeSequence
	
	^(1 to: numberOfMoments) collect: [:moment | self fires ifTrue: [1] ifFalse: [0]]