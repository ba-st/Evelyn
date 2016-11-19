accessing - private
runTrainingButton

	| button |

	button := webViewCatalog interactiveButtonDescribedBy: 'Run training'.
	button onTrigger
		serializeContainerForm;
		evaluate:
				[ snapshotView := WindTrainingSnapshotWebView advancingThrough: self trainingSnapshots ];
		render: identifiedSnapshotView.
	^ button