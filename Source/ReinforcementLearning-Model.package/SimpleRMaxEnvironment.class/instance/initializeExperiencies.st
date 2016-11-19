initialize-release
initializeExperiencies

	experiencies := Dictionary new.
	states do: 
			[:state |
			| stateExperiencies |
			stateExperiencies := Dictionary new.
			actions do: 
					[:action |
					stateExperiencies at: action
						put: (RMaxExperience in: self for: state whenDoing: action)].
			experiencies at: state put: stateExperiencies]