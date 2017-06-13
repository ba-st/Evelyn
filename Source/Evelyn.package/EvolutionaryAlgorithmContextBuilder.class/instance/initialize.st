initialization
initialize
	survivorsSelectionStrategy := Binding undefinedExplainedBy: 'Se espera definicion del usuario' raising: InstanceCreationFailed.
	parentSelectionStrategy := self defaultPartentStrategy.
	crossOverStrategy := Binding undefinedExplainedBy: 'Se espera definicion del usuario' raising: InstanceCreationFailed.
	mutator := Binding undefinedExplainedBy: 'Se espera definicion del usuario' raising: InstanceCreationFailed.
	stoppingCriteria := self defaultStoppingCriteria.
	evolutionaryAlgorithmGenerationBuilder := self defaultAlgorithmGenerationBuilder.
	record := self defaultRecord.
	numberOfTrials := self defaultNumberOfTrails