initialize-release
initializeSnapshotView

	snapshotView := [ :canvas | 'Nothing has evolved so far' ].
	identifiedSnapshotView := IdentifiedWebView forDivNamed: 'Snapshot' containing: [ :canvas | canvas render: snapshotView ]