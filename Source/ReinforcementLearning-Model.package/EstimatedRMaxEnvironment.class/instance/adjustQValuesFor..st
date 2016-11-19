processing - private
adjustQValuesFor: aState

	^actions do: [:action | self adjustQValuesFor: aState whenDoing: action]