initialization
initialize

	survivorsSelectionStrategy := Binding undefinedExplainedBy: 'Se espera definicion del usuario' raising: InstanceCreationFailed.
	parentSelectionStrategy := Binding to: self defaultPartentStrategy.
	crossOverStrategy := Binding undefinedExplainedBy: 'Se espera definicion del usuario' raising: InstanceCreationFailed.
	mutator := Binding undefinedExplainedBy: 'Se espera definicion del usuario' raising: InstanceCreationFailed.
	stoppingCriteria := Binding to: [ :aGeneration | aGeneration number > 100 ].
	evolutionaryAlgorithmGenerationBuilder := Binding to: self defaultAlgorithmGenerationBuilder