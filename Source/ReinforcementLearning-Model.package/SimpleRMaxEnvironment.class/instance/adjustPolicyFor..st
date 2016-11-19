processing - private
adjustPolicyFor: state

	| experience |
	experience := ((experiencies at: state) asSortedCollection: [:a :b | a value >= b value]) first.

	values at: state put: experience value.
	policy at: state put: experience action