initialize-release
initializePolicy

	policy := Dictionary new.
	states do: [:state | policy at: state put: self exploringAction]