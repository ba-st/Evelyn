processing - private
adjustPolicy

	self adjustExperienceValues.

	states do: [:state | self adjustPolicyFor: state]