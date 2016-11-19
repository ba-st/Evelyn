accessing - private
runEvolutionButton

	| button |

	button := webViewCatalog interactiveButtonDescribedBy: 'Run evolution'.
	button onTrigger
		serializeContainerForm;
		evaluate: [ snapshotView := EvolutionSnapshotWebView
				advancingThrough: self evolutionWinnerSnapshots ];
		render: identifiedSnapshotView.
	^ button