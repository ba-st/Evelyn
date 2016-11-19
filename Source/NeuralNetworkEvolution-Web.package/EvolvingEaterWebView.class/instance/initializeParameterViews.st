initialize-release
initializeParameterViews

	actionsPerGenerationView := NumberWebView between: 1 and: 100.
	actionsPerGenerationView obtainContentsFrom: [ 10 ].
	generationsView := NumberWebView between: 1 and: 200.
	generationsView obtainContentsFrom: [ 20 ].
	offspringPerWinnerView := NumberWebView between: 1 and: 10.
	offspringPerWinnerView obtainContentsFrom: [ 10 ].
	winnersPerGenerationView := NumberWebView between: 1 and: 20.
	winnersPerGenerationView obtainContentsFrom: [ 2 ].
	seedView := NumberWebView between: 1 and: 1000.
	seedView obtainContentsFrom: [ 90 ]