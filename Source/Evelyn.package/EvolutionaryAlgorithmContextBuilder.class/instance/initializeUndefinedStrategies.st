initialization
initializeUndefinedStrategies
	survivorsSelectionStrategyBinding := Binding undefinedExplainedBy: 'The survivor selection strategy should be configure by User' raising: InstanceCreationFailed.
	crossOverStrategyBinding := Binding undefinedExplainedBy: 'The cross over strategy should be configure by User' raising: InstanceCreationFailed.
	mutatorBinding := Binding undefinedExplainedBy: 'The mutator should be configure by User' raising: InstanceCreationFailed