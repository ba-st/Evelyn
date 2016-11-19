rendering
renderContentOn: aCanvas

	self renderEvolutionFormOn: aCanvas.
	self renderWindEffectDescriptionOn: aCanvas.
	aCanvas render: identifiedSnapshotView