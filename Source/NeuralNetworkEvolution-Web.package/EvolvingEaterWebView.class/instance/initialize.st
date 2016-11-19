initialize-release
initialize

	super initialize.
	webViewCatalog := SemanticUICatalog deployedIn: 'semanticUI'.
	self initializeParameterViews.
	self initializeSnapshotView