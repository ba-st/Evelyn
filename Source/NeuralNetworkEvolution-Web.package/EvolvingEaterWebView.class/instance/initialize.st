initialize-release
initialize

	super initialize.
	webViewCatalog := SemanticUIComponentSupplier locatedAt: LocalFileLibrary / 'semanticUI'.
	self initializeParameterViews.
	self initializeSnapshotView