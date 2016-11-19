initialize-release
initializeSnapshotView

	identifiedCurrentSnapshotView := IdentifiedWebView
		forDivNamed: 'Snapshot'
		containing:
			[ :canvas | self renderTableFor: (snapshots at: snapshotIndexView contents) on: canvas ]