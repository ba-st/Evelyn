initialization
initializeUndefinedStrategies
	survivorsSelectionStrategy := Binding
		undefinedExplainedBy: 'The survivor selection strategy should be configure by User'
		raising: InstanceCreationFailed.
	crossOverStrategy := Binding
		undefinedExplainedBy: 'The cross over strategy should be configure by User'
		raising: InstanceCreationFailed.
	mutator := Binding undefinedExplainedBy: 'The mutator should be configure by User' raising: InstanceCreationFailed