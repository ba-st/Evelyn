accessing
describeSequences: aNumberOfSequences
	
	| sequences |
	sequences := OrderedCollection new.

	aNumberOfSequences timesRepeat: [sequences add: self describeSequence].

	^(1 to: numberOfMoments) collect: [:moment | sequences collect: [:each | each at: moment]]