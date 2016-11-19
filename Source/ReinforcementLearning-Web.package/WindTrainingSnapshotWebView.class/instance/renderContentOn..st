rendering
renderContentOn: aCanvas

	aCanvas form: (LabeledWebView displaying: snapshotIndexView with: 'Step ').
	aCanvas render: identifiedCurrentSnapshotView