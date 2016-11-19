processing - private
adjustExperienceValues

	states do: 
			[:state |
			actions do: [:action | ((experiencies at: state) at: action) adjustValue]]