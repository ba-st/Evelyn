accessing - private
initialStatesInformation

	^environment allPossibleStates
		collect: [:state | OrderedCollection with: state]