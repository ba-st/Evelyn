initialize-release
initializeMineLocations

	mineLocations := OrderedCollection new.
	[mineLocations size < self numberOfMines] whileTrue: 
			[| location |
			location := trainer nextMineLocation.
			(self isAvailable: location) ifTrue: [mineLocations add: location]]