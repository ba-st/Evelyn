rendering - private
renderImageFor: occupation on: aCanvas

	| imageView |

	imageView := ImageWebView
		displayingImageAt:
			('Images/<1s>' expandMacrosWith: (self imageToDisplayFor: occupation)).

	aCanvas render: imageView