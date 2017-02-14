rendering - private
renderImageFor: occupation on: aCanvas

	| imageView |

	imageView := ImageWebView
		locatedAt: LocalFileLibrary / (self imageLocationFor: occupation)
		applying: CompositeComponentCommand empty.

	aCanvas render: imageView