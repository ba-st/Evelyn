initialization
initialize
	| defaultRecord |
	survivorsSelectionStrategy := Binding undefinedExplainedBy: 'Se espera definicion del usuario' raising: InstanceCreationFailed.
	parentSelectionStrategy := self defaultPartentStrategy.
	crossOverStrategy := Binding undefinedExplainedBy: 'Se espera definicion del usuario' raising: InstanceCreationFailed.
	mutator := Binding undefinedExplainedBy: 'Se espera definicion del usuario' raising: InstanceCreationFailed.
	stoppingCriteria := self defaultStoppingCriteria.
	evolutionaryAlgorithmGenerationBuilder := self defaultAlgorithmGenerationBuilder.
	defaultRecord := NullRecord new.
	record := defaultRecord.
	numberOfTrials := 1