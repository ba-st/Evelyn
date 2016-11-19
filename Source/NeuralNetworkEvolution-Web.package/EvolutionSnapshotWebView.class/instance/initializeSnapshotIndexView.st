initialize-release
initializeSnapshotIndexView

	snapshotIndexView := NumberWebView between: 1 and: snapshots size.
	snapshotIndexView obtainContentsFrom: [ 1 ].
	snapshotIndexView onTrigger
		serializeContainerForm;
		render: identifiedCurrentSnapshotView