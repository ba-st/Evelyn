accessing - private
imageLocationFor: occupation

	^ ImageSelectorResolver
		pngFilenameFor: ('Images/<1s>' expandMacrosWith: (self imageToDisplayFor: occupation))