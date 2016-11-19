initialize-release
initializeFor: aPosition occupiedBy: anOccupant facing: aFacing

	self initializeFor: aPosition.
	occupant := anOccupant.
	occupantsFacing := aFacing