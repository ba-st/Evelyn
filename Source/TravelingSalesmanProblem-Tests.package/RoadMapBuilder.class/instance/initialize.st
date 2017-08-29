initialization
initialize
	anotherCities := Binding undefinedExplainedBy: 'Should have a collection of cities to visit' raising: InstanceCreationFailed.
	startingCity := Binding undefinedExplainedBy: 'Should have a starting city' raising: InstanceCreationFailed