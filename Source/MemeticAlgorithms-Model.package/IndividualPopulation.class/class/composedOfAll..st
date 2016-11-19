instance creation
composedOfAll: anIndividualCollection

	self assertNotEmpty: anIndividualCollection.
	^ self new initializeComposedOfAll: anIndividualCollection