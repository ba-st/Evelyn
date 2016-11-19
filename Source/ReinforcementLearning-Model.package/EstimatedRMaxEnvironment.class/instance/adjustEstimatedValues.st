processing - private
adjustEstimatedValues

	states do: 
			[:state |
			self adjustQValuesFor: state.
			self adjustValueFor: state]