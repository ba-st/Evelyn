initialize-release
initializeSnapshotView

	identifiedCurrentSnapshotView := IdentifiedWebView
		forDivNamed: 'Snapshot'
		containing: [ :canvas | 
			self
				renderTableFor: (snapshots at: (snapshotIndexView contents min: snapshots size))
				on: canvas ]