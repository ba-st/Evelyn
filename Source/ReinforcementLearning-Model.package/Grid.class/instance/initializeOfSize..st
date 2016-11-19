initialize-release
initializeOfSize: aNumber

	yAxis := OrderedCollection new.
	aNumber timesRepeat: 
			[| xAxis |
			xAxis := OrderedCollection new.
			aNumber timesRepeat: [xAxis add: EmptyLocation new].
			yAxis add: xAxis].

	knownLocations := Dictionary new