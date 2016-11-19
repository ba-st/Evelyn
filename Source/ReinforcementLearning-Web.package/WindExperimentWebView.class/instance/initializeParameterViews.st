initialize-release
initializeParameterViews

	discountRateView := SingleLineTextWebView new.
	discountRateView obtainContentsFrom: [ '0.9999' ].
	worldSizeView := NumberWebView between: 5 and: 50.
	worldSizeView obtainContentsFrom: [ 5 ].
	seedView := NumberWebView between: 1 and: 1000.
	seedView obtainContentsFrom: [ 90 ]