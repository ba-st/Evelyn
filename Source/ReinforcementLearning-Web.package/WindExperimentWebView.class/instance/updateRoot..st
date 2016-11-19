rendering
updateRoot: aRoot

	super updateRoot: aRoot.
	aRoot title: self title.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0'.
	 webViewCatalog updateStylesAndScriptsOf: aRoot